class AddCollegeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :college, :string, limit: 39
  end
end
