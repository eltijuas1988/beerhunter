class AddPaperclipToBreweries < ActiveRecord::Migration
  def change
    add_attachment :breweries, :image
  end
end
