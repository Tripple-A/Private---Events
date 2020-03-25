class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.integer :attendees_id
      t.integer :attended_events_id

      t.timestamps
    end
  end
end
