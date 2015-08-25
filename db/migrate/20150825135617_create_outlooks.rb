class CreateOutlooks < ActiveRecord::Migration
  def change
    create_table :outlooks do |t|
		t.string :correo 
		t.string :clave 
		t.string :nombre 

      t.timestamps
    end
  end
end
