class BooksController < ApplicationController
	def index
		@books = Book.all.order(rating: :desc)
	end

	def show
		@book = Book.find(params[:id])
		@book.views = @book.views + 1
		@book.save
	end
end
