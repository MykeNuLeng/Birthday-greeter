require 'sinatra'
require_relative './lib/person'

class Greeter < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/data' do
    $person = Person.new(params[:name], params[:bday], params[:month])
    $person.bday? redirect '/bday'

    redirect '/not_bday'
  end

  post '/bday' do
    erb :bday
  end

  get '/not_bday' do
    erb :not_bday
  end

end
