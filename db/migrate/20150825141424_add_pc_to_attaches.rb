class AddPcToAttaches < ActiveRecord::Migration
  def change
    add_reference :attaches, :pc, index: true
  end
end
