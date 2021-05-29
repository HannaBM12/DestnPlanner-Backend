class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.string :timage
      t.float :tprice
      t.string :location
      t.string :video

      t.timestamps
    end
  end
end
