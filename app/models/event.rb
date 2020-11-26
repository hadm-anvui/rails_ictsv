class Event < ApplicationRecord
    has_many :event_comments
    has_many :event_proofs
    has_many :event_registrations
end
