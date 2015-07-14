class Message < ActiveRecord::Base
belongs_to :user
validates :content, length: {minimum: 2}
validates :user_id, presence: true
end
