class CreatePcMaintenances < ActiveRecord::Migration
  def change
    create_table :pc_maintenances do |t|
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
