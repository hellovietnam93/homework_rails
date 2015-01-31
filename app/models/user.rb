class User < ActiveRecord::Base
	# attr_accessible :name

	has_many :microposts

	validates :name, length:{maximum: 6, minimum: 3}
	validates :name, presence: true
	validates :name, uniqueness: true

	validates :email, presence: true
	validates :email, uniqueness: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }	#right format
end
