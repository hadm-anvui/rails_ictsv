json.extract! event_proof, :id, :user_id, :event_id, :note, :created_at, :updated_at
json.url event_proof_url(event_proof, format: :json)
