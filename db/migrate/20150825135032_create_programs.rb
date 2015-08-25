class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
    	t.string :nombre 
		t.string :version 
		t.integer :licencias 

      t.timestamps
    end
  end
end
