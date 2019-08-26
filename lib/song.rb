#In order to have an artist find all of it's songs,
#the song class needs to know about all its song instances
#and a song instance needs to know about the artist class it belongs to.

class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist !=nil
    self.artist.name
    else
      nil
    end
  end
end

# How can an artist have many songs and a song belong to an artist?
# An individual song will need to have a reference to the artist it belongs to,
# meaning it will need to have an artist=() and artist method.
# And an individual artist will need a method that
# returns a collection of all the songs that belong to that artist.
# Which means the song class will need to have
# a class variable that holds all instances of every song
# thats been created in an array.
# To access that array, the song class will also need a class method
# that returns the class variable holding those instances.
