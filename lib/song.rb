class Song

  attr_accessor :name, :artist, :genre

  @@song = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@song << name
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash ={}
    @@genres.each {|element| hash[element] == nil ? hash[element] = 1 : hash[element] += 1 }
    hash
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    hash ={}
    @@artists.each {|element| hash[element] == nil ? hash[element] = 1 : hash[element] += 1 }
    hash
  end

end
