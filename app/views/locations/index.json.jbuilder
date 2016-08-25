json.array!(@locations) do |location|
  json.extract! location, :id, :address, :latitude, :longitude , :street_name, :country 
  json.url location_url(location, format: :json)
end
