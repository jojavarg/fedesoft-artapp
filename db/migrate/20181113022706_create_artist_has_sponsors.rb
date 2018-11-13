class CreateArtistHasSponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_has_sponsors do |t|
      t.string :as_description
      t.belongs_to :Artist, foreign_key: true
      t.belongs_to :Sponsor, foreign_key: true

      t.timestamps
    end
  end
end
