class Event < ApplicationRecord
    has_many :event_comments
    has_many :event_proofs
    has_many :event_registrations
    has_one_attached :image
end
