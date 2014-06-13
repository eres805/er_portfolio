require('sinatra')
require('sinatra/reloader')
require('pony')

get('/') do
	erb :index
end

post '/submit' do
  Pony.mail :to => 'eres805@gmail.com',
            :from => params[:email],
            :name => params[:name],
            :message => params[:message],
            :subject => 'Test'
end
