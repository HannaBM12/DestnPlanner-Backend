class CreateTourReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :tour_reservations do |t|
      t.string :date
      t.integer :quantity
      t.float :tour_total
      t.references :traveler, null: false, foreign_key: true
      t.references :tour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
