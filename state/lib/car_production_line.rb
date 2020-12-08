class CarProductionLine
	attr_accessor :state
	def initialize
		@state = EngineInstallationState.new
	end
	def move_to! state
		@state = @state.next state 
	end
end