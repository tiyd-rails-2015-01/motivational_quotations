class Human
  def self.population
    Human.new("La-a")
    7400000000
  end

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end

Human.population

mason = Human.new("Mason")
mason.name

# BLOW UP: to call mason.population
# BLOW UP: to call Human.name
