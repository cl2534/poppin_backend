class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_img_link
  has_many :posts
  
end
