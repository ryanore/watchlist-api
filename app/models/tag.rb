class Tag < ApplicationRecord
	belongs_to :user

	validates :label,
		presence: true,
		length: { minimum: 2 }
end
