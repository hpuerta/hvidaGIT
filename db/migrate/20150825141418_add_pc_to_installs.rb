class AddPcToInstalls < ActiveRecord::Migration
  def change
    add_reference :installs, :pc, index: true
  end
end
