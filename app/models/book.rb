class Book < ApplicationRecord
  def self.search(search)
    if search
      where(['bookname LIKE?, "%#{search}%"'])
    else
      all
    end
  end
end
