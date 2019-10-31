class Cat

  @@all = []

  attr_accessor :mood, :owner
  attr_reader :name
  #initialized with name (read only) and owner object
  #initial mood = nervous (read and write)

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"

    @@all << self
  end
  #new_owner: method to change owner 

  def new_owner(new_name)
    @owner = new_name
  end

  def self.all
    @@all
  end

  #Class method to store all cats


end