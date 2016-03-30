json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :latitude, :longitude, :address, :name, :contact
  json.url brewery_url(brewery, format: :json)
end
