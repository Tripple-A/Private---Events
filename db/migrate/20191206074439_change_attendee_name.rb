class ChangeAttendeeName < ActiveRecord::Migration[6.0]
  def change
    rename_column :invitations, :attendees_id, :attendee_id
    rename_column :invitations, :attended_events_id, :attended_event_id
  end
  
 
end
