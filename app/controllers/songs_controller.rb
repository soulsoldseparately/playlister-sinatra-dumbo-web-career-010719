class SongsController < ApplicationController
  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get '/songs/:id' do
    @song = Song.find{params[:id].to_i}
    erb :'/songs/show'
  end
end
