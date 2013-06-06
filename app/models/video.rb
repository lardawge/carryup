class Video < ActiveRecord::Base

  mount_uploader :file_attachment, VideoUploader
  store_in_background :file_attachment

end
