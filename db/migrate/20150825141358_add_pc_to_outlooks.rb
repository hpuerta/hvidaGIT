class AddPcToOutlooks < ActiveRecord::Migration
  def change
    add_reference :outlooks, :pc, index: true
  end
end
