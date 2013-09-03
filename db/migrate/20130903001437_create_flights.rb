class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :number
      t.datetime :departs_at
      t.string :departure_code
      t.string :arrival_code
      t.integer :distance, default: 0
      t.integer :seats, default: 0
    end
  end
end
