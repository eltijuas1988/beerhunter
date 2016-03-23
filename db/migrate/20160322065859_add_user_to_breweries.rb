class AddUserToBreweries < ActiveRecord::Migration
  def change
    add_reference :breweries, :user, index: true, foreign_key: true
  end
end
