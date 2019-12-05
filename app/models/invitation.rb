class Invitation < ApplicationRecord
  belongs_to :attended_events, class_name: 'Event'
  belongs_to :attendees, class_name: 'User'
end
