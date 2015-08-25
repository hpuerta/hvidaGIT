class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
		t.string :letra 
		t.string :ruta 

      t.timestamps
    end
  end
end
