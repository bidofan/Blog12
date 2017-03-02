class Team < ApplicationRecord
    has_many :footballers, dependent: :destroy
	validates :name, presence: true,
	                 length: {minimum: 5}
end
