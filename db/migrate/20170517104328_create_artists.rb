class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :artistName
      t.string :country
      t.string :label
      t.string :genre

      t.timestamps
    end
  end
end
