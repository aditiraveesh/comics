class AddComicsTable < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :image
      t.string :image_url
    end
  end
end
