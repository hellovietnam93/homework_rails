class Micropost < ActiveRecord::Base
	

	# attr_accessible :user_id, :content
	
	belongs_to :user
	
  	validates :content, length: { maximum: 140 } 	#length
  	validates :content, presence: true				#not null
	validates :content, uniqueness: true			#unique
end
