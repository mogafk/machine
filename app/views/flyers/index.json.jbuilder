json.array!(@flyers) do |flyer|
  json.extract! flyer, :id, :descr, :title
  json.url flyer_url(flyer, format: :json)
end
