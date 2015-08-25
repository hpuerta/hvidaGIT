class AddProgramToInstalls < ActiveRecord::Migration
  def change
    add_reference :installs, :program, index: true
  end
end
