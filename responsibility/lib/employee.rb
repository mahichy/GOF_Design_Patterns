class Employee
	attr_reader :chief
	def initialize options = {}
		@chief = options[:chief]
	end
	def name
		"Mahi Chowdhury"
	end

	def department_name
		chief.department.name
	end

end