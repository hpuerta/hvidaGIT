module FormHelper
    def setup_pc(pc)
      #pc = Pc.new
      i = 5 - pc.programs.count
      i.times {pc.installs.build.build_program}
      pc
    end
end