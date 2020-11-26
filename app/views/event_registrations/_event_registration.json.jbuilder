json.extract! event_registration, :id, :user_id, :event_id, :reason, :created_at, :updated_at
json.url event_registration_url(event_registration, format: :json)
