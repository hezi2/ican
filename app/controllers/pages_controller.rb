class PagesController < ApplicationController

	def index
		@councils = Council.joins(:memberships).group(:id).order("COUNT(memberships.id) DESC").limit(5) + Council.includes(:memberships).where(memberships: { id: nil })
	end

	def profile
		@user = current_user
		@memberships = Membership.all
	end
end
