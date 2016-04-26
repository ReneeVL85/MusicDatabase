class SongsController < ApplicationController
  def index
    @songs = Song.order(year: :asc)
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.find(param[:id])

    if songs.save
      redirect_to artists_path(songs.artist_id)
    else
      render new_song_path
    end
  end
  


private

   def novel_params
     params.require( :song ).permit( :title, :year, :synopsis, :artist_id )
   end
 end
