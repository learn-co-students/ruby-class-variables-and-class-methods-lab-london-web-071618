require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
    @@genre_count[genre] = 0;
    end
    @@genres.each do |genre|
    @@genre_count[genre] += 1
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
    @@artist_count[artist] = 0;
    end
    @@artists.each do |artist|
    @@artist_count[artist] += 1
    end
    @@artist_count
  end

end

# Song.new("Cannonball", "The Breeders", "Rock")
# Song.new("Huffer", "The Breeders", "Rock")
# Song.new("Call me Maybe", "Carly Rae Jepsen", "Pop")
# Song.new("Displaced", "Dirty Beaches", "Experimental")
#
# binding.pry
