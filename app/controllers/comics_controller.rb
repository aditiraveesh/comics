class ComicsController < ApplicationController
  def upload
  end

  def show
    file_to_be_uploaded = params["file"].tempfile
    cloudinary_resp = Cloudinary::Uploader.upload(file_to_be_uploaded.path)
    image_url = cloudinary_resp["secure_url"]
    @comic = Comic.create(:image_url => image_url)
    @comic_image_url = @comic.attributes["image_url"]
  end

  def index
    @image_urls = Comic.all.map {|c| c.attributes["image_url"]}
  end

end
