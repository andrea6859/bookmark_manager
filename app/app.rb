require 'sinatra/base'
require_relative 'models/link'

class Bookmark_manager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

run! if app_file == $0
end
