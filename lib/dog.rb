class Dog

  @@all = []

  attr_accessor :mood, :owner
  attr_reader :name
  # initialize with name(read only) and owner
  #inital mood = nervous (read and write)

  def initialize (name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"

    @@all << self
  end

  #method chanege_owner
  def new_owner(new_name)
    @owner = new_name
  end

  #class method to store all instances of Dog
  def self.all
    @@all
  end
  


end

