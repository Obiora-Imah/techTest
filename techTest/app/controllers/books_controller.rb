class BooksController < ApplicationController

  # GET /books.json
  def index
  end

  def top_books
    render json: set_view_data
  end

  private

    def set_view_data
      res = []
      Book.first_ten.each do |book|
        res << {
          title:book.title,
          author: book.author,
          position: book.book_category.position,
          weeks_on_list: book.book_category.weeks_on_list
        }
      end
      res
    end
end
