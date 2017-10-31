class Artist
  @@song_count = 0
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  def add_song_by_name(song_name)
    new_inst = Song.new(song_name)
    add_song(new_inst)
  end
  def self.song_count
    @@song_count
  end

  def songs
    @songs
  end
end
