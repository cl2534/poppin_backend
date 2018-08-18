class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :profile_img_link
      t.timestamps
    end
  end
end
