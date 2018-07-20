require 'pry'

class Song

  attr_accessor :count, :name, :artist, :genre, :artists,
                :genres, :genres_hash, :artists_hash

  @@count = 0
  @@artists = []
  @@genres = []
  @@genres_hash = {}
  @@artists_hash = {}

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
    #iterates through the @@genres list and creates a key for each
    #genre and stores the number of times genre appears in the array as
    #its value
    #This can tell us the number of tracks a genre has in the playlist.
    #binding.pry
      @@genres.each do |x|
        @@genres_hash[x] = @@genres.select.count {|y| y.include?(x)}
      end
      @@genres_hash
  end

  def self.artist_count
    #iterates through the @@artists list and creates a key for each
    #artist and stores the number of times artist appears in the array as
    #its value.
    #This can tell us the number of tracks an individual artist has in the playlist.
    #binding.pry
      @@artists.each do |x|
        @@artists_hash[x] = @@artists.select.count {|y| y.include?(x)}
      end
      @@artists_hash
  end

end


puts "HI"
