class Attach < ActiveRecord::Base
	belongs_to :pc, :inverse_of => :attaches
	belongs_to :device, :inverse_of => :attaches
	accepts_nested_attributes_for :device,
	  :reject_if => proc {|attributes|
	    attributes.all? {|k,v| v.blank?}
	  }
end
