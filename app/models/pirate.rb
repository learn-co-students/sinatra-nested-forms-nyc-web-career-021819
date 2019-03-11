class Pirate
attr_accessor :name, :weight, :height
@@all = []

def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    @@all << self
end

def self.all
    @@all
end



end
# Create two classes, a Pirate class and a Ship class. Pirates should have a name, weight, and height.
#  You will also need a class method that returns all the pirates. 

# Make a nested form (this should probably have html <label>s so it makes sense to a user). This form will be creating three objects 
# (one instance of the Pirate class, and two instances of the Ship class). Remember, you'll need to build a corresponding controller action
#  to load this page. Your form should POST to the route '/pirates'.

# After a user clicks submit they should be taken to a page that displays all the information we just posted from the form. You should have a page 
# that shows the pirate you created along with their ships and all the details about the pirate and their ships.