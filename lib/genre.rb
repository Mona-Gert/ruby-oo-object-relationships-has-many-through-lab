class Genre
    attr_accessor :name, :artist, :genre

    @@all=[]

    def initialize(name)
        @name=name
        @@all<<self
        @genres=genre
    end
    
    def songs
        Song.all.select do|song|
            song.genre==self
        end
    end

    def self.all
        @@all
    end

    def artists
        #has many artists, through songs
        Song.all.map do |song|
            song.artist
        end
        

    end
    
end



