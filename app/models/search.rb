class Search < ApplicationRecord
  has_many :post_tags, dependent: :destory
  has_many :lists, through: :post_tags
end
