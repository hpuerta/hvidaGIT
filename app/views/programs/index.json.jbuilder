json.array!(@programs) do |program|
  json.extract! program, :id, :nombre, :version, :licencias
  json.url program_url(program, format: :json)
end
