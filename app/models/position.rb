class Position < ActiveRecord::Base

	belongs_to :user
	belongs_to :council
	has_many :pos_votes
	has_many :incumbents

end
