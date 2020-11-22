# require "test_helper"
require "minitest/autorun"
require_relative "../lib/generator"

module Newsletter
	describe Generator do 
		it " generate a newsletter in HTML " do
			final_result = File.read File.expand_path(
				"fixtures/newsletter.html",
				File.dirname(__FILE__)
				)
			Generator.new.render.must_include final_result
		end

	end
end