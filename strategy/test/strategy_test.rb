require 'minitest/autorun'
require_relative "../lib/newsletter/generators/base"
require_relative "../lib/newsletter/generators/html"
require_relative "../lib/newsletter/generators/markdown"

module Newsletter
	describe Generators::Base do
		it "generators a newsletter in HTML" do
			final_result = File.read(File.expand_path(
				"fixtures/newsletter.html",
				File.dirname(__FILE__)
			))

			Generators::Base.new(:html).render.must_include(final_result)
		end

		it "generate a newsletter in HTML" do
			final_result = File.read(File.expand_path(
				"fixtures/newsletter.markdown",
				File.dirname(__FILE__)
			))

			Generators::Base.new(:markdown).render.must_include(final_result)
		end

		
	end
end