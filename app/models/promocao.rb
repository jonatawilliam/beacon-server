class Promocao < ApplicationRecord
    mount_uploader :imagem, ImageUploader
    mount_base64_uploader :imagem, ImageUploader
end
