class Bookmark
    attr_accessor :title, :url
    attr_reader :last_visited
    
    def visit!
        @last_visited = Time.now
    end
end