class BooksController < ApplicationController
	before_action :set_book, only: [:show, :favourite]

	def index
		@books = Book.all.order(rating: :desc)
	end

	def show
		@book.views = @book.views + 1
		@book.save
	end

	def favourite
    type = params[:type]
    if type == "favourite"
      current_user.favourite << @book
      redirect_to favourites_path, notice: 'You favourited #{@book.title}'

    elsif type == "unfavourite"
      current_user.favourites.delete(@book)
      redirect_to favourites_path, notice: 'Unfavourited #{@book.title}'

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end

  private

  def set_book
  	@book = Book.find(params[:id])
  end
end
