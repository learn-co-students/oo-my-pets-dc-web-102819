class Owner

  @@all = [] 
   
   attr_reader :name , :species


    def initialize (name)
      @name = name 
      @species = "human" 
      @@all << self
    end 

    def say_species 
      "I am a #{@species}."
    end 

    # Method below returns all our instances of the Owner Class 
     def self.all 
      return @@all 
     end

      def self.count
         @@all.length
      end 

      def self.reset_all 
        @@all.clear
      end 

      def cats
        Cat.all.select do |cat|
          cat.owner == self
        end
      end 
      # code goes here
      def dogs
        Dog.all.select do |dog|
          dog.owner == self
        end
      end 

      def buy_cat(name)
      namelower = name.downcase
      namelower = Cat.new(name,self)
      namelower.mood = "happy"
      end 

      def buy_dog(name)
        namelower = name.downcase
        namelower = Dog.new(name,self)
        namelower.mood = "happy"   
      end 
    
      def walk_dogs
        self.dogs.each do |dog|
          dog.mood = "happy"
        end 
      end 

     def feed_cats
      self.cats.each do |cat|
        cat.mood = "happy"
      end 
     end 

     def sell_pets
     end 

     def list_pets
     end 


end 