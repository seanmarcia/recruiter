class AddAddressToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :address1, :string, null: false
    add_column :profiles, :address2, :string
    add_column :profiles, :city, :string, null: false
    add_column :profiles, :state, :string, null: false
    add_column :profiles, :zip, :string, null: false, limit: 5
  end
end
