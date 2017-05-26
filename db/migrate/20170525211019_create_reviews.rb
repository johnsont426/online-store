class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :star
      t.string :title
      t.string :content
      t.integer :item_id
    end
  end
end
