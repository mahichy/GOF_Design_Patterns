require_relative "../lib/services/user_payment"
require_relative "../lib/services/manager_payment"


class PaymentServiceFactory
	def self.for entity 
		if entity.is_a? User
			return UserPaymentService.new
		elsif entity.is_a? Manager
			return ManagerPaymentService.new
		end 
	end
end