class ArtistHasSponsorSerializer < ActiveModel::Serializer
  attributes :id, :as_description
  has_one :Artist
  has_one :Sponsor
end
