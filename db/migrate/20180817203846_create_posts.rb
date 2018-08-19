class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.references :user
      t.text :picture_url
      t.integer :likes
      t.string :location
      t.string :articles
      t.timestamps
    end
  end
end
