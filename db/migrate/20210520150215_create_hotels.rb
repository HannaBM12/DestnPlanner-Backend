class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :latitude
      t.string :longitude
      t.integer :propid
      t.float :price
      t.float :guest_reviews
      t.float :guest_rating
      t.float :rating
      t.string :address
      t.string :neighbourhood
      t.string :distance

      t.timestamps
    end
  end
end
