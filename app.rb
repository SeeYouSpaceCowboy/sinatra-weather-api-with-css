require_relative './config/environment'

class Application < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @city = params[:city]
    @country = params[:country]
    @temperture = 0
    erb :show
  end
end
