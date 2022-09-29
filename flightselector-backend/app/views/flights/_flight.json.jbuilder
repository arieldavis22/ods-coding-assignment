json.extract! flight, :id, :flight_identifier, :flt_num, :scheduled_origin_gate, :scheduled_destination_gate, :out_gmt, :in_gmt, :off_gmt, :on_gmt, :destination, :origin, :destination_full_name, :origin_full_name, :created_at, :updated_at
json.url flight_url(flight, format: :json)
