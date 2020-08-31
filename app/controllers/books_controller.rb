class BooksController < ApplicationController
  before_action :set_book, only: [:show]

  def index
    @books = Book.all
    json_response(@books)
  end

  def show
    is_favourite = current_user.favourite_books.include?(@book)

    response = {
      book: @book,
      isFavourite: is_favourite
    }

    json_response(response)
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
