class Book < ApplicationRecord
	belongs_to :book_category

	scope :first_ten, -> { includes(:book_category).order("book_categories.position").first(10) }
end