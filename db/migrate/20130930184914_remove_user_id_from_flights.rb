class RemoveUserIdFromFlights < ActiveRecord::Migration
  def change
    remove_column :flights, :user_id
  end
end
