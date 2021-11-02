class MP3Importer

    attr_accessor :path

    def initialize(file_path)
        @path = file_path
    end

    def files
        @@files = []
        Dir.each_child(@path) do |file|
            if file.include?(".mp3")
                @@files << file 
            end
        end
        @@files
    end

    def import
        @@files.each do |file|
            Song.new_by_filename(file)
        end
    end

end