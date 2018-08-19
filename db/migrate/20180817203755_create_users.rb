class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :profile_img_link
      t.string :address
      t.string :about_me
      t.string :facebook_url
      t.string :instagram_username
      t.timestamps
    end
  end
end
