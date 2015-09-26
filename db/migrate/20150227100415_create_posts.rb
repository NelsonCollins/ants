class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :advert
      t.string :image_uid
      t.string :image_name
    
      t.timestamps
    end
  end
end
