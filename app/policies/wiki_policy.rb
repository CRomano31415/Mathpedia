class WikiPolicy < ApplicationPolicy
	attr_reader :user, :wiki

	def initialize(user, wiki)
		@user = user
		@wiki = wiki
	end 

	def index?
		true 
	end 

	def show?
	   true
	end 

	def create?
	   user.present?
	end

	def new?
	  create?
	end


	def update?
		(user.admin? || @wiki.user == user) && user != nil
	end 

	def edit?
		update?
	end 

	def destroy?
		(user.admin? || @wiki.user == user) && user != nil
	end 

	def wiki
		record
	end 

	
end 