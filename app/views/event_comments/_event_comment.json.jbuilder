json.extract! event_comment, :id, :user_id, :event_id, :content, :created_at, :updated_at
json.url event_comment_url(event_comment, format: :json)
