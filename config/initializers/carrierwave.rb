CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIR73AA3PW4OHQPCQ',                        # required
    :aws_secret_access_key  => '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',
    :region     =>  "us-east-1"                   # required
# required
}
  config.fog_directory  = 'sparcdev'                     # required
  config.fog_public     = true                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  config.storage = :fog
  config.cache_dir = "#{Rails.root}/tmp/"
  


if Rails.env.test?
    CarrierWave.configure do |config|
      config.storage = :file
      config.enable_processing = false
    end
end

end




