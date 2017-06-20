class AlbumsController < ApplicationController
	before_action :find_album, only: [:show, :edit, :update, :destroy]

	def index
	    @album = Album.all.order("created_at DESC")
	  end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@album = Album.new(album_params)

		@album.save
		redirect_to @album
	end

	def update	 
	  if @album.update(album_params)
	    redirect_to @album
	  else
	    render 'edit'
	  end
	end

	def destroy
		@album.destroy
		redirect_to root_path
	end

	private

	def find_album
		@album = Album.find(params[:id])
	end


	def album_params
		params.require(:album).permit(:artistName, :albumName, :albumYear)
	end

end
