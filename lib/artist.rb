class Artist
  attr_accessor :name , :artist ,:songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def self.song_count
    @@song_count
  end
end
