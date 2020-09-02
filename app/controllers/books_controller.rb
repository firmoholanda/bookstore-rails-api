class BooksController < ApplicationController
  before_action :set_book, only: [:show]

  def index
    # get current user books
    @books = current_user.books
    #@books = Book.all
    json_response(@books)
  end

  # POST /books
  def create
    # create books belonging to current user
    @book = current_user.books.create!(book_params)
    json_response(@book, :created)
  end

  # GET /books:id
  def show
    is_favourite = current_user.favourite_books.include?(@book)
    response = { book: @book, isFavourite: is_favourite }

    json_response(response)
  end

  # PUT /books/:id
  def update
    @book.update(book_params)
    head :no_content
  end

  # DELETE /books/:id
  def destroy
    @book.destroy
    head :no_content
  end


  private

  def book_params
    params.permit(:title, :description, :category)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
