class Artist
attr_accessor :name, :genre

@@all=[]

def initialize(name)
    @name=name
    @@all<<self
    @songs

end

def self.all
    @@all
end

def songs
    #returns all songs associated with this Artist
    Song.all.select do|song|
        song.artist==self
    end
end
  
def new_song(name,genre)
    new_song=Song.new(name,self,genre)
end

def genres
 songs.map do |song|
        song.genre
    end
end


end
