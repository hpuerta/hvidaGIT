class Device < ActiveRecord::Base
	has_many :attaches, :inverse_of => :devices
	has_many :pcs, through: :attaches
	def device_with_where
    	"#{marca} #{ubicacion}"
  	end
end
