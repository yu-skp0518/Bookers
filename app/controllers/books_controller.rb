class BooksController < ApplicationController
  def new
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(@post_params)
    redirect_to book_path(book.id)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end