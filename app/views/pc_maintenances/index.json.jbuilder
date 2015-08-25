json.array!(@pc_maintenances) do |pc_maintenance|
  json.extract! pc_maintenance, :id, :fechaMantenmiento, :correctivo, :prioridad, :leido, :completado, :realizadoPor, :descripcion
  json.url pc_maintenance_url(pc_maintenance, format: :json)
end
