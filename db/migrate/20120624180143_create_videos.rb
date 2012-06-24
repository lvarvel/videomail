class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :sender_id
      t.integer :recipient_id

      t.attachment :video

      t.timestamps
    end
  end
end
