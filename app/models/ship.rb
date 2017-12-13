class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end



# The ship class should have name, type, and booty attributes, as well as a class method .all that returns all the ships and a class method .clear that deletes all ships.
