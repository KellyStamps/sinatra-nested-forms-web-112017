require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight],params[:pirate][:height])
      @ships = params[:pirate][:ships].collect { |ship| Ship.new(ship[:name], ship[:type], ship[:booty])  }
      erb :'pirates/show'
    end

  end
end


# After a user clicks submit they should be taken to a page that displays all the information we just posted from the form. You should have a page that shows the pirate you created along with their ships and all the details about the pirate and their ships.
