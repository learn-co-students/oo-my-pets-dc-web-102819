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
  # code goes here
end 