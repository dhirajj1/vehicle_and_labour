json.extract! vehicle, :id, :name, :pick_up_address, :destination_address, :pick_up_time, :destination_time, :vehicle, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
