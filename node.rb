class Node

    attr_reader :value
    attr_accessor :next_node

    def initialize(value = nil,next_node = nil)
        @next_node = next_node
        @value = value
    end

    def to_s
        return @value
    end
end


