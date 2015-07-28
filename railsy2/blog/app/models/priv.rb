class Priv < ActiveRecord::Base
belongs_to :sender,
 :class_name => 'User',
 :primary_key => 'id',
 :foreign_key => 'sender_id'
belongs_to :recepient,
 :class_name => 'User',
 :primary_key => 'id',
 :foreign_key => 'recepient_id'
end
