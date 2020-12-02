require "minitest/autorun"
require_relative "../lib/family"
describe Family do
	it "prints every member of the family" do
		family = Family.new "Jackson"

		family.add_father "Jhon"
		family.add_mother "Jane"

		3.times { |i| family.add_child "child #{i}", "F"}

    output = []
		family.each_member { |member| output << family.full_name(member) }

    output.must_equal(
      [
        "Jhon Jackson",
        "Jane Jackson",
        "child 0 Jackson",
        "child 1 Jackson",
        "child 2 Jackson"
      ])
	end
end
