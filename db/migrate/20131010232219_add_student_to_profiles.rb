class AddStudentToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :student, :boolean, default: true, null: false
  end
end
