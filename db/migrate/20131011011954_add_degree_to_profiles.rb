class AddDegreeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :degree, :string, limit: 44
  end
end
