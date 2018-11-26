class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  version :normal do
    process :resize_and_pad => [300, 300, "#FFFFFF", "Center"]
    process :convert => 'jpg'
  end

  version :thumb do
    process :resize_and_pad => [100, 100, "#FFFFFF", "Center"]
    process :convert => 'jpg'
  end

  version :mini do
    process :resize_and_pad => [40, 40, "#FFFFFF", "Center"]
    process :convert => 'jpg'
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    "/images/#{model.class.to_s.underscore}.jpg"
  end

  def extension_white_list
    %w(jpg jpeg png)
  end

  def filename
    "#{secure_token}.jpg" if original_filename.present?
  end

  protected

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end
end
