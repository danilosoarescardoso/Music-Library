class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :artistName
      t.string :albumName
      t.string :albumYear
      t.belongs_to :artist, index: true

      t.timestamps
    end
  end
end
