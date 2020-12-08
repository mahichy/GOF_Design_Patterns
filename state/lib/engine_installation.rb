class EngineInstallationState
	def initialize context
		@context = context
	end
	def next state
	if state == :hood then
			@context.state = HoodInstallationState.new
		end
		
	end

end

