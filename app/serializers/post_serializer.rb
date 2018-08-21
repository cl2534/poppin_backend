class PostSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture_url, :likes, :location, :articles, :user_id
  has_many :post_styles, embed: :objects
  has_many :styles, through: :post_styles
  belongs_to :user

  def include_tags?
    object.association(:styles).loaded?
  end
end
