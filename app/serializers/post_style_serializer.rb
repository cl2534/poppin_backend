class PostStyleSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :style_id
  belongs_to :post, foreign_key: :post_id
  belongs_to :style, foreign_key: :style_id
end
