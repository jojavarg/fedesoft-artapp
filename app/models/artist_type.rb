class ArtistType < ApplicationRecord
    has_many :artist_has_types 
    has_many :artists, :through => :artist_has_types
end
