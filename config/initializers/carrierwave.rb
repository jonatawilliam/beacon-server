CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.storage    = :aws
    config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
    config.aws_acl    = :public_read
    config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365
    config.aws_credentials = {
      access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
      secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
      region: 'sa-east-1'
    }
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
  end
end
