class EventSerializer < ActiveModel::Serializer
  attributes :id, :ev_title, :ev_description, :ev_date, :ev_place, :ev_planner
  has_one :Artist
end
