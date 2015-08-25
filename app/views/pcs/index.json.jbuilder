json.array!(@pcs) do |pc|
  json.extract! pc, :id, :nombre, :descripcion, :encargado, :area, :codigoContable, :factura, :fechaCompra, :garantia, :marca, :so, :serialSo, :office, :serialOffice, :procesador, :velocidad, :ram, :discoDuro, :antivirus, :cdrom, :d312, :lectorMemorias, :internet, :ultimoMantenimiento, :frecuencia, :usuarioComputador, :claveComputador, :drivers
  json.url pc_url(pc, format: :json)
end
