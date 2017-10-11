class StoreController < ApplicationController
	def index
		@stores = Store.all

		if params[:currentaddress].present?
			@currentaddress = params[:currentaddress]
			@store = Store.near("#{@currentaddress}", 8_000_000 , order: 'distance').first
		end
	end

	def show
		@store = Store.find(params[:id])
	end
end
