class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :caption
      t.integer :user_id
      t.integer :image_id

      t.timestamps
    end
  end
end
