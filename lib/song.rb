class Song

  attr_accessor :name, :artist, :genre

# Constant set to collect genres into an array
  @@genres = []
# class variable set to 0
  @@count = 0
  @@artists = []


# what happens when we call (initalize) the class Song.new
# each new song will have these attributes
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end

  # define the class method to call the class variable
  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end


#class method with class scope (CS)
 def self.all
   @@all
 end


 #class method w/CS
 def self.artists
   @artist
 end

# class methodw/CS

def self.count
  @@count
end


#print all existing artists
  def self.artists
    @@artists.uniq
  end


# print all existing songs.names
  def self.titles
    @title.uniq
  end

# print all existing genres
  def self.genres
      @@genres.uniq
  end
  def self.genre_count
    genre_count={}
    @@genres.map { |e|  }

  end

end
