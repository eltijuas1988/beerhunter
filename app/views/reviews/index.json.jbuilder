json.array!(@reviews) do |review|
  json.extract! review, :id, :rating, :review, :brewery_id
  json.url review_url(review, format: :json)
end
