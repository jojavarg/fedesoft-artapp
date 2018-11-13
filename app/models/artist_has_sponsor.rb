class ArtistHasSponsor < ApplicationRecord
  belongs_to :artist
  belongs_to :sponsor
end
