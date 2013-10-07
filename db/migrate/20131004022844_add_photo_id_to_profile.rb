class AddPhotoIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :id_number, :string, limit: 30
    add_index :profiles, :id_number, unique: true
  end
end
