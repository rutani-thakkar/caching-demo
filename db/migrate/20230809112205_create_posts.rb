class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :is_published, default: false

      t.timestamps
    end
  end
end
