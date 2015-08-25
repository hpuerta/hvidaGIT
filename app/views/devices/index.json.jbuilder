json.array!(@devices) do |device|
  json.extract! device, :id, :marca, :impresora, :scanner, :red, :direccion, :ultimoMantenimiento, :frecuencia, :ubicacion
  json.url device_url(device, format: :json)
end
