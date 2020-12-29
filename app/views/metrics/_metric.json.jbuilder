json.extract! metric, :id, :equipment_id, :planned_production_time, :stop_time, :ideal_cycle_time, :total_count, :good_count, :availability, :performance, :quality, :oee, :created_at, :updated_at
json.url metric_url(metric, format: :json)
