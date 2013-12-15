class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment, null: false
      t.integer :blog_post_id, null:false
      t.integer :author_id, null:false

      t.timestamps
    end
  end
end
