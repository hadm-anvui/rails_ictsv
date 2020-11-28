class Event < ApplicationRecord
    has_many :event_comments, -> { order "created_at DESC"}
    has_many :event_proofs
    has_many :event_registrations
end
