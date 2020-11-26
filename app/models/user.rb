class User < ApplicationRecord
    has_many :event_comments
    has_many :event_proofs
    has_many :event_registrations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
