class ArtistsController < ApplicationController

	def index
	    @artist = Artist.all
	  end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
	end

	def edit
	  @artist = Artist.find(params[:id])
	end

	def create
		@artist = Artist.new()

		@artist.save
		redirect_to @artist
	end

	def update
	  @article = Artist.find(params[:id])
	 
	  if @aartist.update(article_params)
	    redirect_to @artist
	  else
	    render 'edit'
	  end
	end

	private
	def artist_params
		params.require(:artist).permit(:artistName, :country, :label, :genre)
	end

end

