class Artist
  attr_reader :name, :album

  def initialize name
    @name = name
    @album = []
  end

  def add_album album
    @albums << album
  end
end

class Album
  attr_reader :name, :songs

  def initialize name
    @name = name
    @songs = []
  end

  def add_song song
    @songs << song
  end
end

class Song
  attr_reader :name, :duration

  def initialize name, duration
    @name = name
    @duration = duration
  end
end

albums = []

artist = Artist.new "Tom Odell"
album1 = Album.new 'Sad songs'

albums << album1

song1 = Song.new "Another love", "4:05"
song2 = Song.new "How do I say Goodbye", "2:44"
song3 = Song.new "The loneliest", "4:48"

album1.add_song song1
album1.add_song song2
album1.add_song song3

albums.each do |album|
  puts "Album: #{album.name}", ""
  album.songs.each do |song|
    puts "Song: #{song.name} - duration: #{song.duration}"
  end
end