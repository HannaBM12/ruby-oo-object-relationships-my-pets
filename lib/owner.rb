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

    def cats
      Cat.all.select{|cat_inst| cat_inst.owner == self}
    end

    def dogs
      Dog.all.select {|dog_inst| dog_inst.owner == self}
    end

    def buy_cat(cat)
        Cat.new(cat, self)
    end

    def buy_dog(dog)
      Dog.new(dog, self)
    end

    def walk_dogs
      dogs.map{|dog_inst| dog_inst.mood = "happy"}
    end

    def feed_cats
      cats.map{|cat_inst| cat_inst.mood = "happy"}
    end

    def sell_pets
      owner_pet = dogs + cats
      owner_pet.each {|pet| 
          pet.mood = "nervous" 
          pet.owner = nil }
    end

    def list_pets
      return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
    end

end