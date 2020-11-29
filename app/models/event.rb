class Event < ApplicationRecord
    has_many :event_comments, -> { order "created_at DESC"}
    has_many :event_proofs
    has_many :event_registrations
  
    has_one_attached :image
    
    def if_registed(current_user_id, current_event_id)
        self.event_registrations.each do |event_registration|
            if event_registration.user_id == current_user_id && event_registration.event_id == current_event_id
                return event_registration.id
            end
        end
        return 0
    end
  
end
