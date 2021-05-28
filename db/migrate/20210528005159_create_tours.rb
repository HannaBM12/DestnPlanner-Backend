class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.string :image
      t.float :price
      t.string :location
      t.string :video

      t.timestamps
    end
  end
end
