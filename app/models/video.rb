class Video < ActiveRecord::Base

  mount_uploader :file_url, VideoUploader
  store_in_background :file_url

end
