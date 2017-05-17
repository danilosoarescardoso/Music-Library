class ArtistsController < ApplicationController

	def index
	    @artist = Artist.all
	  end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
	end

	def create
		@artist = Artist.new()

		@artist.save
		redirect_to @artist
	end

	private
	def artist_params
		params.require(:artist).permit(:artistName, :country, :label, :genre)
	end

end

