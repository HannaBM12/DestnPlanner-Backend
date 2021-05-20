class CreateTravelers < ActiveRecord::Migration[6.1]
  def change
    create_table :travelers do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :password_digest

      t.timestamps
    end
  end
end