json.array!(@tracks) do |track|
  json.extract! track, :artist, :title, :owned
  json.url track_url(track, format: :json)
end
