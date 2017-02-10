class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album

      t.timestamps
      t.belongs_to :artist
    end
  end
end
