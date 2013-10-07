class ChangeEthnicityOnProfile < ActiveRecord::Migration
  def change
    change_column :profiles, :ethnicity, :string, limit: 41
  end
end
