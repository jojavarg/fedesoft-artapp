class Sponsor < ApplicationRecord
  belongs_to :user
  has_many :job_oportunities
  has_many :artist_has_sponsors
  has_many :artists, :through => :artist_has_sponsors
end
