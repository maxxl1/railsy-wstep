class User < ActiveRecord::Base
  has_many :messages, dependent: :destroy
  has_many :received_messages,
  :class_name => 'Priv',
  :primary_key=> 'id',
  :foreign_key => 'recepient_id'
  validates :nick,  presence: true, length: { maximum: 50 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 255 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 4 }
end
