class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params[:song])
    redirect_to @song
  end

  def show
    @song = Song.find(params[:id])
  end

  private

    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
