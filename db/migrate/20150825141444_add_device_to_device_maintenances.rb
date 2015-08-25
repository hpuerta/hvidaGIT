class AddDeviceToDeviceMaintenances < ActiveRecord::Migration
  def change
    add_reference :device_maintenances, :device, index: true
  end
end
