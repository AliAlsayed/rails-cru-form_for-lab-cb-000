class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params[:song])
  end
end
