class Python
    include Reptile
    attr_reader :name, :shed_count
    def initialize(name)
        @name = name
        @shed_count = 0
    end
    
    def speak
        "SSSSssssss..."
    end

    def shed
        @shed_count += 1
        "#{@name} has been reborn. Number of times shedded: #{@shed_count}"
    end

end
