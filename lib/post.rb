class Post
    attr_accessor :author
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def author_name
        if self.author != nil
            self.author.name
        end
    end

    def self.all
        @@all
    end
end