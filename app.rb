require './environment'


# rspec ./spec/01_sinatra_forms_spec.rb:7 # FormsLab::App GET '/' returns a 200 status code
# rspec ./spec/01_sinatra_forms_spec.rb:11 # FormsLab::App GET '/' renders the instructions
# rspec ./spec/01_sinatra_forms_spec.rb:22 # FormsLab::App GET '/new' returns a 200 status code
# rspec ./spec/01_sinatra_forms_spec.rb:26 # FormsLab::App GET '/new' renders a new form element on the page
# rspec ./spec/01_sinatra_forms_spec.rb:31 # FormsLab::App GET '/new' renders the pirate input fields for name, weight, and height attributes on the page
# rspec ./spec/01_sinatra_forms_spec.rb:37 # FormsLab::App GET '/new' renders the first ship's input fields for the name, type, and booty attributes on the page
# rspec ./spec/01_sinatra_forms_spec.rb:43 # FormsLab::App GET '/new' renders the second ship's input field for the name, type, and booty attributes on the page
# rspec ./spec/01_sinatra_forms_spec.rb:77 # FormsLab::App POST '/pirates' returns a 200 status code
# rspec ./spec/01_sinatra_forms_spec.rb:81 # FormsLab::App POST '/pirates' displays the pirate information upon form submission
# rspec ./spec/01_sinatra_forms_spec.rb:87 # FormsLab::App POST '/pirates' displays the first ship's information upon form submission
# rspec ./spec/01_sinatra_forms_spec.rb:93 # FormsLab::App POST '/pirates' displays the second ship's information upon form submission
# rspec ./spec/02_interaction_spec.rb:6 # Filling in the Form can fill in forms for a pirate and two ships

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do 
      erb :'/pirates/new'
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      # puts @pirate.inspect
      # puts @ships.inspect

      # @ship1 = Ship.new(params[:pirate])
      # @ship2 = Ship.new(params[:pirate])

      erb :'/pirates/show'
    end

  end
end
