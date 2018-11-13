class Artist < ApplicationRecord
  belongs_to :user
  has_many :creations
  has_many :artist_has_types 
  has_many :artist_types, :through => :artist_has_types
  has_many :artist_has_sponsors
  has_many :sponsors, :through => :artist_has_sponsors
  has_many :events

end
