class CreatePostStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :post_styles do |t|
      t.references :post
      t.references :style
      t.timestamps
    end
  end
end
