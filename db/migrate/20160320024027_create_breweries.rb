class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :name
      t.string :contact

      t.timestamps null: false
    end
  end
end
