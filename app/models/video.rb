class Video < ActiveRecord::Base
    attr_accessible :sender_id, :recipient_id

    belongs_to :sender, :class_name => "User"
    belongs_to :recipient, :class_name => "User"

    has_attached_file :video,
      :storage => :s3,
      :bucket => ENV['S3_BUCKET_NAME'],
      :s3_credentials => {
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
      }

end
