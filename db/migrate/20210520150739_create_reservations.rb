class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :check_in
      t.string :check_out
      t.integer :no_of_night
      t.integer :no_of_room
      t.string :cancelation_policy
      t.float :total
      t.references :traveler, null: false, foreign_key: true
      t.references :hotel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
