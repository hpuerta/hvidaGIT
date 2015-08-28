class Install < ActiveRecord::Base
	belongs_to :pc, :inverse_of => :installs
	belongs_to :program, :inverse_of => :installs
	validates :pc, presence: true
	validates :program, presence: true
	accepts_nested_attributes_for :program,
	  :reject_if => proc {|attributes|
	    attributes.all? {|k,v| v.blank?}
	  }
end
