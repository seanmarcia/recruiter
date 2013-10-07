class AddIncomeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :income, :string, limit: 15
  end
end
