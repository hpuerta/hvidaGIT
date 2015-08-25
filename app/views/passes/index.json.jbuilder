json.array!(@passes) do |pass|
  json.extract! pass, :id, :programa, :usuario, :clave
  json.url pass_url(pass, format: :json)
end
