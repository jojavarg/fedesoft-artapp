class JobOportunitySerializer < ActiveModel::Serializer
  attributes :id, :jo_title, :jo_description, :jo_date
  has_one :Sponsor
end
