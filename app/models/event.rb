# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :creator, foreign_key: :creator_id, class_name: 'User'

  has_many :invitations, foreign_key: :attended_event_id
  has_many :attendees, through: :invitations, source: :attendee

  scope :past, -> { where('date < :current_time', current_time: DateTime.now) }
  scope :upcoming, -> { where('date >= :current_time', current_time: DateTime.now) }
end
