if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     "AKIAIFZPR7RVX7QYNMVQ",
      aws_secret_access_key: "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"
    }
    config.fog_directory  = ENV['S3_BUCKET']
  end
end
