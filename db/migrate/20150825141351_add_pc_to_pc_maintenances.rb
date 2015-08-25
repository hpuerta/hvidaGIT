class AddPcToPcMaintenances < ActiveRecord::Migration
  def change
    add_reference :pc_maintenances, :pc, index: true
  end
end
