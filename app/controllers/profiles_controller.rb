class ProfilesController < InheritedResources::Base
  # before_filter :authenticate_user!
  defaults singleton: true
  belongs_to :user
  actions :all, :except => [:index, :destroy]

  def show
    redirect_to new_user_profile_path if current_user.profile.blank?
    show! unless current_user.profile.blank?
  end

  private
    def permitted_params
      params.permit(:profile => [
        :secondary_email,
        :first_name,
        :last_name,
        :id_number,
        :phone,
        :gender,
        :age,
        :ethnicity,
        :marital_status,
        :class_year,
        :years_resident,
        :college,
        :student,
        :job_title,
        :industry,
        :degree,
        :income,
        :address1,
        :address2,
        :city,
        :state,
        :zip])
    end
end
