# books controller
class BooksController < ApplicationController
  before_action :set_book, only: %i[show update destroy]
  before_action :check_admin, only: %i[create update destroy]

  # GET /books
  def index
    @books = current_user.books
    json_response(@books)
  end

  # POST /books
  def create
    @book = current_user.books.create!(book_params)
    json_response({ message: Message.book_created })
  end

  # GET /books:id
  def show
    json_response(@book)
  end

  # PUT /books/:id
  def update
    @book.update(book_params)
    json_response({ message: Message.book_updated })
  end

  # DELETE /books/:id
  def destroy
    @book.destroy
    json_response({ message: Message.book_deleted })
  end

  private

  def book_params
    params.permit(:title, :description, :category)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def check_admin
    raise(ExceptionHandler::AuthenticationError, Message.not_admin) unless current_user.admin
  end
end
