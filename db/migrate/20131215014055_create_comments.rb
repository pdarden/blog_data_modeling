class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :blog_post_id
      t.integer :author_id

      t.timestamps
    end
  end
end
