class Attach < ActiveRecord::Base
	belongs_to :pc
	belongs_to :device
end
