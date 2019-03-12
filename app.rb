require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
        params[:pirate][:ships].each do |details|
          Ship.new(details)
        end
      @ships = Ship.all
      # binding.pry

      erb :"pirates/show"
    end

    # CREATE
    # GET
    # get '/pirates/new'

    # post '/pirates'


    # READ
    # INDEX
    # get '/pirates'

    # SHOW
    # get '/pirates/:id'

    # UPDATE
    # get '/pirates/:id/edit'
    # patch '/pirates/:id'

    # DELETE
    # delete '/pirates/:id'

  end
end
