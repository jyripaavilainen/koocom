class CreateComedians < ActiveRecord::Migration
  def change
    create_table :comedians do |t|
      t.string :stagename
      t.string :website_url
      t.text :description
      t.string :youtube_video_id
      t.string :contact_email
      t.string :profile_photo_url

      t.timestamps
    end
  end
end
