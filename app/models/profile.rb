class Profile < ActiveRecord::Base
  belongs_to :user, inverse_of: :profile
  validates :user, presence: true

  validates :first_name, :last_name, :id_number, :gender, :age, :ethnicity,
    :marital_status, :phone, :address1, :city, :state, :zip, presence: true
  validates :class_year, :college, presence: true, if: "student"
  validates :job_title, :industry, :degree, :income, presence: true, unless: "student"

  validates :secondary_email, format: { with: /\A[^@]+@[^@]+\z/,
    message: 'Not a valid e-mail address.' }, allow_nil: true
  validates :secondary_email, uniqueness: true
  validates :id_number, uniqueness: true

  normalize_attributes :secondary_email, :zip

  [:first_name, :last_name, :job_title, :industry, :address1,
    :address2, :city, :state].each do |attribute|
    normalize_attribute attribute do |value|
      value.is_a?(String) ? value.titleize.strip : value
    end
  end

  normalize_attribute :id_number do |value|
    value.is_a?(String) ? value.upcase.strip : value
  end
end
