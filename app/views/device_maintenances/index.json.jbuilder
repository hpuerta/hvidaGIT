json.array!(@device_maintenances) do |device_maintenance|
  json.extract! device_maintenance, :id, :fechaMantenmiento, :correctivo, :prioridad, :leido, :completado, :realizadoPor, :descripcion
  json.url device_maintenance_url(device_maintenance, format: :json)
end
