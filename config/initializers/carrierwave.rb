# Use Heroku tmp dir for file uploads for now
# needs to be changed to fog, e.g. s3, if we are upgrading to more dynos
CarrierWave.configure do |config|
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end
