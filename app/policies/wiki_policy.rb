class WikiPolicy < ApplicationPolicy
	attr_reader :user, :wiki

	def initialize(user, wiki)
		@user = user
		@wiki = wiki
	end 

	def index?
		user.present?
	end 

	def show
		user.present?
	end 

	def update?
		user.admin? or not wiki.published?
	end 

	def destroy?
		user == wiki.user || user.role == 'admin'
	end 

	def wiki
		record
	end 
end 