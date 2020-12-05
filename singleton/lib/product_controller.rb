require 'singleton'
class ProductController 
	attr_reader :product

	def show
		@product = PRODUCT
	end
end