class AddDeviceToAttaches < ActiveRecord::Migration
  def change
    add_reference :attaches, :device, index: true
  end
end
