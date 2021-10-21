require 'pry'
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
        file_array = file_name.split("-")
        file_artist = file_array[0].strip
        file_name = file_array[1].strip

        new_instance_song = Song.new(file_name)
        new_instance_song.artist_name = file_artist
        new_instance_song 
    end

    def artist_name=(artist)
        if (new_artist = Artist.all.detect {|i| i.name == artist})
            self.artist = new_artist
        else
           new_artist =  Artist.new(artist)
           self.artist = new_artist
        end
    end

end


