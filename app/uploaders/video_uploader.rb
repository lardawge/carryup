class VideoUploader < CarrierWave::Uploader::Base
  include ::CarrierWave::Backgrounder::Delay

  storage :fog

  def store_dir
    "#{@model.class.to_s.underscore.pluralize}/#{@model.id}/#{@mounted_as.to_s}"
  end

  def extension_white_list
    %w(mp4)
  end

end