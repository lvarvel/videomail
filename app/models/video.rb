class Video < ActiveRecord::Base
    attr_accessible :sender_id, :recipient_id

    belongs_to :sender, :class_name => "User"
    belongs_to :recipient, :class_name => "User"

    has_attached_file :video

end
