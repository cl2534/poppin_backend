class PostSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :post_styles
  has_many :styles, through: :post_styles
  belongs_to :user
end
