class Pirate

  @@all = []

  attr_accessor :name, :weight, :height

  def initialize(info)
    @name = info[:name]
    @weight = info[:weight]
    @height = info[:height]
    @@all << self
  end

  def self.all
    @@all
  end

end
