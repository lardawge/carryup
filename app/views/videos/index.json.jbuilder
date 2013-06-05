json.array!(@videos) do |video|
  json.extract! video, :file_url, :file_url_tmp
  json.url video_url(video, format: :json)
end