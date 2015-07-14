class Message < ActiveRecord::Base
validates :content, length: {minimum: 2}
end
