require'pry'
class Song
  
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
 
  @@count = 0
  @@artists = []
  @@genres = []
  
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count 
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    freq_hash = Hash.new(0)
    @@genres.each { |x| freq_hash[x] +=1}
    freq_hash
  end
  
  def self.artist_count
    freq_hash = Hash.new(0)
    @@artists.each { |x| freq_hash[x] +=1}
    freq_hash
  end
  
  #Song.new("Lucifer", "Jay-Z", "rap" )
end