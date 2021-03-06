class Employee
	attr_reader :chief
	def initialize options = {}
		@chief = options[:chief]
	end
	def name
		"Mahi Chowdhury"
	end

	def method_missing *args, &block
		method = args.shift
		if method.to_s.include? "department"
			chief.send method, *args, &block
		else
			super *args, &block
		end
	end

end