json.array!(@devices) do |device|
  json.extract! device, :id, :marca, :impresora, :scanner, :red, :direccion, :ultimoMantenimiento, :frecuencia, :ubicaci�n
  json.url device_url(device, format: :json)
end
