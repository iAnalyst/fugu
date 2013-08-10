require 'sinatra'
require 'instagram'

Instagram.configure do |config|
  	config.client_id = "8c3628700abf4360b8c81da2c0c71429"
  	config.client_secret = "88917bdd18174e659c41fb29dc1a5166"
end

get '/' do

	erb :'index.html'
end

get '/tag/:tag' do
	@tag = Instagram.tag_recent_media(params['tag'])

	erb :'tag.html'
end