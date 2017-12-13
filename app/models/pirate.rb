class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end
  
  def self.all
    @@all
  end

end

# Pirates should have a name, weight, and height. You will also need a class method that returns all the pirates.
