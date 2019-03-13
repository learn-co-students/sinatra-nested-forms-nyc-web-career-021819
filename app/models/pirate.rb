class Pirate
  attr_reader :name, :height, :weight

  PIRATES = []

  def initialize(args)
    @name = args[:name]
    @height = args[:height]
    @weight = args[:weight]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
