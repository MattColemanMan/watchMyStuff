json.array!(@watches) do |watch|
  json.extract! watch, :id, :user_id, :watcher_id, :lat, :lng, :location_description, :location_picture, :requested_minutes, :start_time, :end_time, :status
  json.url watch_url(watch, format: :json)
end
