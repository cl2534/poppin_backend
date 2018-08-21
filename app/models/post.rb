class Post < ApplicationRecord
  belongs_to :user
  has_many :post_styles
  has_many :styles, through: :post_styles
end
