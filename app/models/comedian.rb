class Comedian < ActiveRecord::Base
  attr_accessible :contact_email, :description, :profile_photo_url, :stagename, :website_url, :youtube_video_id, :slug
    default_scope order('stagename ASC')

    validates_presence_of :slug

  def to_param
  	slug
  end

end
