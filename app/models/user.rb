class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :sent_videos, :class_name => 'Video', :foreign_key => 'sender_id'
  has_many :received_videos, :class_name => 'Video', :foreign_key => 'recipient_id'

end
