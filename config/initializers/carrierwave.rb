CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider           => 'Rackspace',
    :rackspace_username => APP_CONFIG['cloudfiles']['username'],
    :rackspace_api_key  => APP_CONFIG['cloudfiles']['api_key'],
    :rackspace_region   => :ord,
    :rackspace_servicenet => Rails.env.production?
  }
  config.asset_host = APP_CONFIG['cloudfiles']['host_url']
  config.fog_directory = APP_CONFIG['cloudfiles']['container']
end