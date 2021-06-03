json.extract! appointment, :id, :estado, :user_id, :avaible_hour_id, :service_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
