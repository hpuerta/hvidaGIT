class AddPcToPasses < ActiveRecord::Migration
  def change
    add_reference :passes, :pc, index: true
  end
end
