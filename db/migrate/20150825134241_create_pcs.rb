class CreatePcs < ActiveRecord::Migration
  def change
    create_table :pcs do |t|
    	t.string :nombre 
		t.string :descripcion 
		t.string :encargado 
		t.string :area 
		t.string :codigoContable 
		t.string :factura 
		t.date :fechaCompra 
		t.integer :garantia 
		t.string :marca 
		t.string :so 
		t.string :serialSo 
		t.string :office 
		t.string :serialOffice 
		t.string :procesador 
		t.integer :velocidad 
		t.integer :ram 
		t.integer :discoDuro 
		t.boolean :antivirus 
		t.boolean :cdrom 
		t.boolean :d312 
		t.boolean :lectorMemorias 
		t.boolean :internet 
		t.date :ultimoMantenimiento 
		t.integer :frecuencia 
		t.string :usuarioComputador 
		t.string :claveComputador 
		t.string :drivers 
      t.timestamps
    end
  end
end
