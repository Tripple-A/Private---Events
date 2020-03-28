class AddHostToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_column :invitations, :host_id, :integer
  end
end
