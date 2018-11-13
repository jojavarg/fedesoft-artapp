json.extract! event, :id, :ev_title, :ev_description, :ev_date, :ev_place, :ev_planner, :Artist_id, :created_at, :updated_at
json.url event_url(event, format: :json)
