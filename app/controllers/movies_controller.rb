class MoviesController < ApplicationController

	def index
		
	end

	def show
		@movie = Movie.find(params[:id])

	end

	def search
		# @movie = Movie.new
		search_array = params[:search].split(' ')
		search_array.join('+')
		@movie_search = HTTParty.get("http://www.omdbapi.com/?t=#{params[:search]}&y=&plot=short&r=json")
	end

end