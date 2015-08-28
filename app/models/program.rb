class Program < ActiveRecord::Base
	has_many :installs, :inverse_of => :programs
	has_many :pcs, through: :installs
	def program_with_version
    	"#{nombre} #{version}"
  	end
end
