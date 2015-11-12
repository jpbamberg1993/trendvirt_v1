class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	default_scope -> { order(created_at: :desc) }
	validates :title, presence: true, length: { minimum: 5 }
	validates :body, presence: true
	# validates :user_id, presence: true
end
