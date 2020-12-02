require "minitest/autorun"
require_relative "../lib/family"
describe Family do
	it "prints every member of the family" do 
		family = Family.new "Jackson"

		family.add_father "Jhon"
		family.add_mother "Jane"

		3.times { |i| family.add_child "child #{i}", "F"}

		output = capture_io {family.each_member { |member| puts family.full_name member} }.string

		output.must_equal <<EOF
Jhon Jackson
Jane Jackson
Child 0 Jackson
Child 1 Jackson
Child 2 Jackson 
EOF
	end
end