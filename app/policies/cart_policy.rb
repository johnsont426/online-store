class CartPolicy < ApplicationPolicy
	def show?
		user.admin? || record.try(:user) == user
	end
end