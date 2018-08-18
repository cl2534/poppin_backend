# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mike = User.create(name: 'Mike', profile_img_link: "12")
isaac = User.create(name: 'Isaac', profile_img_link: "12")
chang = User.create(name: 'Chang', profile_img_link: "12")
jee = User.create(name: 'Jee', profile_img_link: "12")

jeans = Style.create(name: 'Jeans', style_pic_link: "12")
shirts = Style.create(name: 'Shirts', style_pic_link: "12")
coat = Style.create(name: 'Jeans', style_pic_link: "12")

post_style1 = PostStyle.create(post_id: 1, style_id: 2)
post_style2 = PostStyle.create(post_id: 1, style_id: 3)
post1 = Post.create(name: 'Summer Outfit', user_id: 1)
post2 = Post.create(name: 'Winter Outfit', user_id: 2)
