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

jeans = Style.create(name: 'Jeans', style_pic_link: "http://www.joesjeans.com/Media/JOES/homepage/premium-womens-denim-and-jeans.jpg")
shirts = Style.create(name: 'Shirts', style_pic_link: "https://www.braiconf.ro/uploads/products/2018W04/0250-camasa-cu-aplicatii-pe-piept0697251054ic70xaqq8-gallery-1-2000x3000.jpg")
coat = Style.create(name: 'Coats', style_pic_link: "https://assets.supremenewyork.com/142654/zo/C9rZR7_iq1g1.jpg")
shoes = Style.create(name: 'Shoes', style_pic_link: "https://stormfashion.dk/uploads/products/storm/shoes-raf-simons-x-adidas_adidas-x-raf-simons_shoes_storm_5.jpg")
normcore = Style.create(name: 'Normcore', style_pic_link: "https://qph.fs.quoracdn.net/main-qimg-1922e1e7a4c39262b50e978c615e1502")
lunarcore = Style.create(name: 'Lunarcore', style_pic_link: "https://i.pinimg.com/originals/b5/03/8d/b5038db75831cd59496dcf4a5c08d7f8.jpg")
dadcore = Style.create(name: 'Dadcore', style_pic_link: "https://img.buzzfeed.com/buzzfeed-static/static/2014-07/18/12/enhanced/webdr10/original-720-1405699217-9.jpg?downsize=715:*&output-format=auto&output-quality=auto")
gothninja = Style.create(name: 'GothNinja', style_pic_link: "https://static.vfiles.com/api/v2/image/media/519206/double")
hypebeast = Style.create(name: 'Hype', style_pic_link: "https://i0.wp.com/www.thetechstyle.com/wp-content/uploads/2018/01/london-collections-men-unsigned-2016-37-1.jpg?resize=800%2C500&ssl=1")
country = Style.create(name: 'Country', style_pic_link: "https://static1.squarespace.com/static/50631261e4b0e9530e2c53a7/55855972e4b08c44bdbd2733/5585ff5be4b08c8c8a685248/1486056542700/Stern-Looking-Cowboy.jpg")
urban = Style.create(name: 'Urban', style_pic_link: "https://qph.fs.quoracdn.net/main-qimg-7813bd2f797194b60feeecefc7b9733c")
formal = Style.create(name: 'Formal', style_pic_link: "https://images.menswearhouse.com/is/image/TMW/MW40_341R_10_CALVIN_KLEIN_FORMAL_SET?wid=1200&hei=627")
comfy = Style.create(name: 'Comfy', style_pic_link: "http://i.imgur.com/GF4ixzf.jpg")
highfashion = Style.create(name: 'High Fashion', style_pic_link: "https://img.memecdn.com/High-Fashion_o_90809.jpg")
preppy = Style.create(name: 'Prepster', style_pic_link: "https://i.pinimg.com/originals/b4/7f/8a/b47f8a478a823dd95148594c4b92940e.png")
skater = Style.create(name: 'Skater', style_pic_link: "https://i.pinimg.com/originals/0e/11/7f/0e117f44e11e0699a4a96d5d535f52dc.jpg")
hawaiian_shirt = Style.create(name: 'Hawaiian Shirt', style_pic_link: "https://www.thinkgeek.com/images/products/zoom/kopo_jurassic_hawaiian_shirt.jpg")


post_style1 = PostStyle.create(post_id: 1, style_id: 2)
post_style2 = PostStyle.create(post_id: 1, style_id: 3)
post1 = Post.create(name: 'Summer Outfit', user_id: 1)
post2 = Post.create(name: 'Winter Outfit', user_id: 2)
