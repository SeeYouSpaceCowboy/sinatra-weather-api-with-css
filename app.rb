require_relative './config/environment'

class Application < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    weather = Weather.new(params[:city])

    @city = params[:city].capitalize
    @country = params[:country].capitalize
    @temperture = weather.next_five_days
    erb :show
  end
end
