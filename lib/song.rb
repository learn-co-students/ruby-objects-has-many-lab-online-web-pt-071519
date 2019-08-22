
class Song
  attr_accessor :name, :artist
   @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def artist_name
  if @artist == nil
      return nil
  else
      @artist.name
  end
end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def self.song_count
    @@song_count 
  end
 
  def songs
    @songs
  end

    def self.all
    @@all
    end
end
