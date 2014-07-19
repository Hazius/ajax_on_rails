json.array!(@managers) do |manager|
  json.extract! manager, :email
  json.url manager_url(manager, format: :json)
end