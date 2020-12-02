class UserPaymentService
	def pay user, amount
		raise ForbiddenAccessError, "This user can't perform payments"
	end
end