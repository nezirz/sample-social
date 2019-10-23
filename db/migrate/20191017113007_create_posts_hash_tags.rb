class CreatePostsHashTags < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_hash_tags do |t|
      t.integer :post_id
      t.integer :hash_tag_id

      t.timestamps
    end
  end
end
