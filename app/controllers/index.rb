get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/url' do
  @url = Url.create(:long_url => params[:url_name])
  erb :index
end
