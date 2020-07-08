class BookSearch < ApplicationRecord
  include ActiveModel::Model

  attr_accessor :search_title, :search_memo

  def execute
    Book.ransack(title_eq: @search_title, memo_eq: @search_memo).result
  end

end
