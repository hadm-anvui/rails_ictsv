json.extract! event, :id, :name, :description, :startDate, :endDate, :point ,:created_at, :updated_at
json.url event_url(event, format: :json)
