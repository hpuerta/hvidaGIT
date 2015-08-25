json.array!(@outlooks) do |outlook|
  json.extract! outlook, :id, :correo, :clave, :nombre
  json.url outlook_url(outlook, format: :json)
end
