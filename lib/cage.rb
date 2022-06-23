class Cage 
    attr_accessor :animal
    def initialize
        @animal = nil
    end

    def empty?
        
        if @animal == nil 
            return true
        end
        return false
    
    end

end