require 'sinatra/base'
require './lib/bookmarks'

class BookmarksManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
  	@bookmarks = Bookmarks.all
    erb(:bookmarks)
  end

  post '/add_bookmark' do
   Bookmarks.add(params[:new_bookmark])
   @new_bookmark = Bookmarks.all.last
   erb(:add_bookmark)
   redirect '/bookmarks'
  end

  # get '/add_bookmark' do
  #   erb(:add_bookmark)
  # end

  run! if app_file == $0
end
