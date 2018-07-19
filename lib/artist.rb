class Artist
    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self
        @songs << new_song
    end

    def self.song_count
        Song.all.size
    end
end