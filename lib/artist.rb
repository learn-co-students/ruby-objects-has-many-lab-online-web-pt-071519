class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    song.name
  end

  def self.song_count
    count = Song.all.size
    count
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
