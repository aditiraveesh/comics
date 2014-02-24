class Comic < ActiveRecord::Base
  attr_accessible :image, :image_url
  mount_uploader :image, ImageUploader
end
