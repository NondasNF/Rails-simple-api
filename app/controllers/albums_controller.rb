class AlbumsController < ApplicationController
  
  def index
    @albums = Album.all
    render :json => @albums
  end

  def show
    render :json => @album
  end

  def create
    if @album.save
      render :json => @album, :status => :created, :location => @album
    else
      render :json => @album.errors, status: :unprocessable_entity
    end
  end

  def update
    if @album.update_attributes(params[:album])
      head :no_content
    else
      render :json => @album.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @album.destroy
    head :no_content
  end

  private
  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:name, :price)
  end
  
end
