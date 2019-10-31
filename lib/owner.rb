class Owner
  # initalize with name (read only)
  #initialize with species set to human (read only)
  attr_reader :name, :species
 @@all =[]
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end


  #buy cat method to buy cat. Takes in argument of name
  def buy_cat(name)
    Cat.new(name, self)
  end

   #buy dog method to buy dog. Takes in argument of name
    def buy_dog(name)
    dog = Dog.new(name, self)
  end

  #sell_dog/sell_cat
  def sell_pets
    self.pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end

  end

  #walk pet method. Changes pet mood to happy.
  def walk_dogs

    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  #feed pet method. Change pet mood to happy.
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  #method to say species
  def say_species
    return "I am a #{@species}."
  end

  #class method to return all instances of Owner created
  def self.all
    @@all
  end
  #method to count number of owners

  def self.count
    @@all.length
  end

  #removes all owners created

  def self.reset_all
    @@all = []
  end

  #lists all owner's cats
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  #lists all owner's dogs
  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  #combines cats and dogs into one array
  def pets
    self.cats + self.dogs
  end

  #lists out number of pets and dogs
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
end