

class Song

    attr_accessor :name, :artist, :genre
    attr_reader :count, :artists, :genres

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
        existing = @@artists
        existing.uniq
    end

    def self.genres
        existing = @@genres
        existing.uniq
    end

    def self.genre_count
        genre_hash = {}
        i = 0
        while i < @@genres.length do
            genre_hash[@@genres[i]] = @@genres.count(@@genres[i])
            i += 1
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        i = 0
        while i < @@artists.length do
            artist_hash[@@artists[i]] = @@artists.count(@@artists[i])
            i += 1
        end
        artist_hash
    end

end