class DayRange
	attr_reader :start, :hourranges
	def initialize hourranges, start = 1, finish = 9999
		@start = start
		@finish = finish
		@hourranges = hourranges
	end

	def self.build
		build_hour_ranges
		new @hourranges
	end

	def self.build_hour_ranges
		@hourranges = [ HourRange.new]
	end
end