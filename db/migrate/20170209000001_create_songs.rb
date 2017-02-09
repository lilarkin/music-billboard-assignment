class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album

      t.timestamps
      t.belongs_to :artist
      t.belongs_to :billboard
    end
  end
end
