class AddMaritalStatusToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :marital_status, :string, limit: 9
  end
end
