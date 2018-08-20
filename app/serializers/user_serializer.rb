class UserSerializer < ActiveModel::Serializer
  # attributes :id, :name, :profile_img_link, :address, :about_me, :facebook_url, :instagram_username
  has_many :posts

end
