class ArtistHasType < ApplicationRecord
  belongs_to :artist
  belongs_to :artist_type
 end
