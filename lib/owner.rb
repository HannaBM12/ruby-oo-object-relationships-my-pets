require 'pry'
class Owner
  # code goes here
  @@all = []
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end


  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

end