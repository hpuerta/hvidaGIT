class Pc < ActiveRecord::Base
	has_many :pc_maintenances
	has_many :outlooks
	has_many :drives
	has_many :passes
	has_many :installs
	has_many :attaches

end
