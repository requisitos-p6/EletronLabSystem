json.array!(@scales) do |scale|
  json.extract! scale, :id, :name_employee, :day, :shechule_initial_hours, :schedule_initial_minutes, :schedule_final_hours, :schedule_final_minutes
  json.url scale_url(scale, format: :json)
end
