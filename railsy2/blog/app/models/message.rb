class Message < ActiveRecord::Base
belongs_to :user
has_many :comments, dependent: :destroy
validates :content, length: {minimum: 2}
validates :user_id, presence: true
end
