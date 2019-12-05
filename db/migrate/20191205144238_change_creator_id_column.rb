class ChangeCreatorIdColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :creator_id, :user_id
  end
end
