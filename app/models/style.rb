class Style < ApplicationRecord
  has_many :post_styles
  has_many :posts, through: :post_styles
end
