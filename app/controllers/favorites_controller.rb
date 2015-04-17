class FavoritesController < ApplicationController

	def index
		@favorites = Favorite.all
	end

	def show
		@favorite = Favorite.find(params[:id])
	end

	def new
		@favorite = Favorite.new
	end

	def create
		@favorite = Favorite.new(favorite_params)
		if @favorite.save
			redirect_to favorites_path
		else
			render :new
		end
	end

	def destroy
		@favorite = Favorite.find(params[:id])
		@favorite.destroy

		redirect_to favorites_path
	end

	private

	def favorite_params
		params.require(:favorite).permit(:id)
	end

end