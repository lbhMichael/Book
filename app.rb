require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    "BookmarkManager"
  end

  get '/bookmark' do
    @bookmarks = Bookmark.all
    erb :index
  end
#bookmarks = ["http://www.makersacademy.com",
          #  " http://www.destroyallsoftware.com",
          #  " http://www.google.com"
  #  bookmarks.join
#  end

get '/bookmark/new' do
  erb :"bookmark/new"
end

#post '/bookmark' do
#  url = params['url']
#  connection = PG.connect(dbname: 'bookmark_manager_test')
#  connection.exec("INSERT INTO bookmark (url) VALUES('#{url}')")
#  redirect '/bookmark'
#end

post '/bookmark' do
  Bookmark.create(url: params[:url])
  redirect '/bookmark'
end
  run! if app_file == $0
end
