class AddPcToDrives < ActiveRecord::Migration
  def change
    add_reference :drives, :pc, index: true
  end
end
