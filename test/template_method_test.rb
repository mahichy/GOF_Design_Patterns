# require "test_helper"
require "minitest/autorun"
require_relative "../lib/generate"
require_relative "../lib/html"

module Newsletter
	describe Generator do 
		it " generate a newsletter in HTML " do
			final_result = File.read File.expand_path(
				"fixtures/newsletter.html",
				File.dirname(__FILE__)
				)
			Generator::HTML.new(:html).render.must_include final_result
		end

		it " generate a report in Markdown " do
			final_result = File.read File.expand_path(
				"fixtures/newsletter.html",
				File.dirname(__FILE__)
				)
			Generator.new(:markdown).render.must_include final_result
		end

	end
end