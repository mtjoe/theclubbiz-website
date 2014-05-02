json.array!(@societies) do |society|
  json.extract! society, :id, :index
  json.url society_url(society, format: :json)
end
