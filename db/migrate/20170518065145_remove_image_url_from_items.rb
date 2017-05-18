class RemoveImageUrlFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :image_url, :string
  end
end
