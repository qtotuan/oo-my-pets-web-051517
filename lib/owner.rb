class Owner
  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def species
    @name
  end

  def say_species
    "I am a #{@name}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    @pets[:dogs].collect! do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect! do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect! do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, animals_array|
      animals_array.each do |animal|
        animal.mood = "nervous"
      end
      animals_array.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
