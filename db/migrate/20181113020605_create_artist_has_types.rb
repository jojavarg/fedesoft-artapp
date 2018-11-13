class CreateArtistHasTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_has_types do |t|
      t.string :ah_description
      t.belongs_to :Artist, foreign_key: true
      t.belongs_to :ArtistType, foreign_key: true

      t.timestamps
    end
  end
end
