class PostStyleSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :post
  belongs_to :style
end
