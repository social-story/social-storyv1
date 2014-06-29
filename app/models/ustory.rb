class Ustory < ActiveRecord::Base
	belongs_to :user
	belongs_to :micropost
	default_scope -> { order('created_at DESC') }
	
	validates :user_id, presence: true
	validates :topic_id, presence: true
end

