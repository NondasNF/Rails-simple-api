  class Api::V1::AlbumsController < ApplicationController
    before_action :set_album, only: [:show, :update, :destroy]

    def index
      @albums = Album.all
      render :json => @albums
    end

    def show
      render :json => @album
    end

    def create
      @album = Album.new(album_params)
      if @album.save
        render :json => @album, :status => :created
      else
        render :json => @album.errors, status: :unprocessable_entity
      end
    end

    def update
      if @album.update(album_params)
        render :json => @album, :status => :ok
      else
        render :json => @album.errors, status: :unprocessable_entity
      end
    end

    def destroy
      if @album.destroy
        render :json => @album, :status => :ok
      else
        render :json => @album.errors, status: :unprocessable_entity
      end
    end

    private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:name, :price)
    end
  end
