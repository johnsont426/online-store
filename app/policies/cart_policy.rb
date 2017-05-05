class CartPolicy < ApplicationPolicy
	def show?
		user.try(:admin?) || record.try(:user) == user
	end
end