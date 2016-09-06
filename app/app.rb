require 'sinatra/base'
require_relative 'models/link'

class Bookmark_manager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
   Link.create(url: params[:Website_Address], title: params[:Website_Title])
   redirect '/links'
  end


run! if app_file == $0
end
