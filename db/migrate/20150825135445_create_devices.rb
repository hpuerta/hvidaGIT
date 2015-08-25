class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
		t.string :marca 
		t.boolean :impresora 
		t.boolean :scanner 
		t.boolean :red 
		t.string :direccion 
		t.date :ultimoMantenimiento 
		t.integer :frecuencia 
		t.string :ubicación 

      t.timestamps
    end
  end
end
