class SearchesController < ApplicationController

before_action :authenticate_user!

	def new
		@search = Search.new
		@user = current_user
	end

	

	def create
		@search = Search.create(search_params)
		redirect_to @search
		@user = current_user
	end

	def show
		@search = Search.find(params[:id])
		@user = current_user

	end


	private
	def search_params
		params.require(:search).permit(:car_plate_number, :car_model)
	end		

end
