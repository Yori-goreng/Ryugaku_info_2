class List < ApplicationRecord
  has_mamy :post_tags, dependent: :destroy
  has_many :searchs. through: :post_tags
end
