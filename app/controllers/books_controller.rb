class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to edit_book_path(@book.id)
  end

  def index
    @book = Book.new
    @user = current_user
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
