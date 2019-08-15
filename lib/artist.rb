require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(obj)
    @songs << obj

    obj.artist = self

  end
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self

  end
  def self.song_count
    Song.all.count
  end
end
#class Artist
#  def initialize(name)
#  #  @name = name
  #  @songs = []
  #end
 #attr_accessor :name, :songs
 #def songs
  # @songs << self
 #end

#
