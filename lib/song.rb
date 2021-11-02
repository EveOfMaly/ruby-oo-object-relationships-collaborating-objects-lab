class Song
    attr_accessor :artist, :name 


    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def self.new_by_filename(file_name)
        name = file_name.split("-")[1].strip
        artist = file_name.split("-")[0].strip

        new_instance = Song.new(name)
        new_instance.artist = Artist.new(artist) 
        new_instance
    end


    def artist_name=(name)
        new_instance = Artist.new(artist) 
        new_instance.name = self 
        self.artist = new_instance
        new_instance
    end



end