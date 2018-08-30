class CreateCabins < ActiveRecord::Migration[5.2]
  def change
    create_table :cabins do |t|
      t.string :name
      t.text :description
      t.integer :rooms
      t.integer :sq_feet
      t.integer :acres
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zip
      t.string :listing_url

      t.timestamps
    end
  end
end
