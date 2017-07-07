class ArtistsController < ApplicationController
	before_action :find_artist, only: [:show, :edit, :update, :destroy]
	def index
	    @artist = Artist.all.order("created_at DESC")
	  end

	def show
	end

	def new
		@all_artists = Artist.all


	end

	def edit
	end

	def create
		@artist = Artist.new(artist_params)

		@artist.save
		redirect_to @artist
	end

	def update	 
	  if @artist.update(artist_params)
	    redirect_to @artist
	  else
	    render 'edit'
	  end
	end

	def destroy
		@artist.destroy
		redirect_to root_path
	end

	private

	def find_artist
		@artist = Artist.find(params[:id])
	end


	def artist_params
		params.require(:artist).permit(:artist_id, :artistName, :country, :label, :genre)
	end

end

