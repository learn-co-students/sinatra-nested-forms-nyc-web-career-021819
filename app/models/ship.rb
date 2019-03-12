class Ship

attr_accessor :name, :type, :booty

  @@all = []

  def initialize(info)
    @name = info[:name]
    @type = info[:type]
    @booty = info[:booty]
    @@all << self
  end


  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
