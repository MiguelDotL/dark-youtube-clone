class AddImgUrlToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :img_url, :string
  end
end
