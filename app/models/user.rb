class User < ApplicationRecord
    validates :password_digest, presence: true, length: { minimum: 6 } , allow_nil: true
    validates :name, presence: :true
    validates :email, presence: :true

    has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'
    has_many :invitations, foreign_key: :attendee_id 
    has_many :attended_events, through: :invitations , source: :attended_event
end
