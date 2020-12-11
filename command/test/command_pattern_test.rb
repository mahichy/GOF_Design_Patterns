require "minitest/autorun"
require_relative "../lib/show_message_button"

describe "Button" do 
	it "triggers something" do 
		button = ShowMessageButton.new(
			label: "Click me!",
			)
		capture_io { button.click }.string.must_include "Button was clicked!"
	end
end