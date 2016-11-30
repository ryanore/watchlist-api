class Movie < ApplicationRecord
	belongs_to :user
	validates :user_id, :data,
		presence: true
end
