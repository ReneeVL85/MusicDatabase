class SongsController < ApplicationController
  def index
    @songs = Song.order(year: :asc)
  end

  def show
    @song = Song.find( params[:id] )
  end


private

   def novel_params
     params.require( :song ).permit( :title, :year, :synopsis, :artist_id )
   end
 end
