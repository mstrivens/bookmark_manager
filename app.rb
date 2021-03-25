require 'sinatra/base'
require './lib/bookmarks'

class BookmarksManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
  	@bookmarks = Bookmarks.all
    @new_title = params[:url]
    erb(:bookmarks)
  end

  post '/add_bookmark' do
   Bookmarks.add(params[:url], params[:new_title])
   @new_title = params[:new_title]
   @new_bookmark = Bookmarks.all.last
  #  erb(:add_bookmark)
   redirect '/bookmarks'
  end

  run! if app_file == $0
end
