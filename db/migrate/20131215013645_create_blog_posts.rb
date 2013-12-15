class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :author_id, null: false
      t.integer :category_id

      t.timestamps
    end
  end
end
