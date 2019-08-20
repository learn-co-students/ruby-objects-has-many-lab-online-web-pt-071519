class Song
  attr_accessor :name, :artist
@@all = []
  def initialize(name)
    @name = name
    
  end

  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
    def songs
      Songs
    end
     def self.all
    @@all
  end
   def save
    @@all << self
  end
  def artist=(artist)
    @artist=artist
       artist.songs << self
  
end
  end
end