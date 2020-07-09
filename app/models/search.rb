class Search < ApplicationRecord
  has_many :post_tags, dependent: :destroy
  has_many :lists, through: :post_tags
end
