class CreateDeviceMaintenances < ActiveRecord::Migration
  def change
    create_table :device_maintenances do |t|
    	t.date :fechaMantenmiento 
		t.boolean :correctivo 
		t.string :prioridad 
		t.boolean :leido 
		t.boolean :completado 
		t.string :realizadoPor 
		t.text :descripcion 

      t.timestamps
    end
  end
end
