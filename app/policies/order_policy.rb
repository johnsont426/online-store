class OrderPolicy < ApplicationPolicy
	def show?
		user.admin? || record.try(:user) == user
	end

	def index?
		user.admin?
	end
end