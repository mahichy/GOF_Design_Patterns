class ShowMessageButton
	def initialize options
		@label = options[:label]
	end

	def click
		puts "Button was clicked!"
	end
end