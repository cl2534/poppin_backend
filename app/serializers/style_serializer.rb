class StyleSerializer < ActiveModel::Serializer
  attributes :id, :name, :style_pic_link
  has_many :post_styles
  has_many :posts, through: :post_styles

  def include_tags?
    object.association(:posts).loaded?
  end
end
