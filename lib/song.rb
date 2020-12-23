class Song
    attr_accessor :name, :artist, :genre

    @@all=[]

    def initialize(name, artist, genre)
        @name=name
        @@all<<self
        @genre=genre
        @artist=artist
    
    end
    
    def self.all
        @@all
    end

    def artist
    @artist
    end
    
end