json.array!(@reiteos) do |reiteo|
  json.extract! reiteo, :id, :description
  json.url reiteo_url(reiteo, format: :json)
end
