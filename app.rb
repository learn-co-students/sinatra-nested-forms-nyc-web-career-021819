require './environment'
# GET '/'
#    returns a 200 status code (FAILED - 1)
#    renders the instructions (FAILED - 2)
#  GET '/new'
#    returns a 200 status code (FAILED - 3)
#    renders a new form element on the page (FAILED - 4)
#    renders the pirate input fields for name, weight, and height attributes on the page (FAILED - 5)
#    renders the first ship's input fields for the name, type, and booty attributes on the page (FAILED - 6)
#    renders the second ship's input field for the name, type, and booty attributes on the page (FAILED - 7)
#  POST '/pirates'
#    returns a 200 status code (FAILED - 8)
#    displays the pirate information upon form submission (FAILED - 9)
#    displays the first ship's information upon form submission (FAILED - 10)
#    displays the second ship's information upon form submission (FAILED - 11)


module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get "/new" do
      erb :'/pirates/new'
    end

    post '/pirates' do
        @pirate = Pirate.new(params[:pirate])

         params[:pirate][:ships].each do |details|
          Ship.new(details)
        end

         @ships = Ship.all

         erb :'pirates/show'
      end



  end
end
