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
    erb(:add_bookmark)
    @new_bookmark = params[:new_bookmark]
  end

  run! if app_file == $0
end
