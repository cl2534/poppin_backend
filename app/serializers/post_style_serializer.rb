class PostStyleSerializer < ActiveModel::Serializer
  # attributes :id
  belongs_to :post, foreign_key: :post_id
  belongs_to :style, foreign_key: :style_id
end
