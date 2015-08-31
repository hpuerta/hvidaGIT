class Pc < ActiveRecord::Base
	has_many :pc_maintenances
	has_many :outlooks
	has_many :drives
	has_many :passes
	
	has_many :programs, through: :installs
	has_many :devices, through: :attaches

	has_many :attaches, :inverse_of => :pc
	accepts_nested_attributes_for :attaches,
	  :reject_if => proc {|attributes|
	    attributes.all? {|k,v| v.blank?}
	  }
	has_many :installs, :inverse_of => :pc
	accepts_nested_attributes_for :installs,
	  :reject_if => proc {|attributes|
	    attributes.all? {|k,v| v.blank?}
	  }
end
