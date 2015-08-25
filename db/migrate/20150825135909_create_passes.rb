class CreatePasses < ActiveRecord::Migration
  def change
    create_table :passes do |t|
		t.string :programa 
		t.string :usuario 
		t.string :clave 

      t.timestamps
    end
  end
end
