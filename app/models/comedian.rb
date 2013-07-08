class Comedian < ActiveRecord::Base
  attr_accessible :contact_email, :description, :profile_photo_url, :stagename, :website_url, :youtube_video_id
end
