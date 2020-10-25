class Owner

  attr_accessor :name, :pets
  attr_reader :species


  @@all = []

  def initialize(name, species = "human")
    @name = name
    @pets = pets
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species(species)
    puts "I am a #{species}."
  end

  def name
    @name
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    pets[:dog].each do |dog|
      dog.mood = "happy"
    end 
  end 
  def feed_fish
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

   def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end
end