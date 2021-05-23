class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :score
      t.references :hotel, null: false, foreign_key: true
      t.references :traveler, null: false, foreign_key: true

      t.timestamps
    end
  end
end
