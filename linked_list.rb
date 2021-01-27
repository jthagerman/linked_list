class Linked_list

    require_relative 'node'

    def initialize()
        @head = nil
        @tail = nil
    end

    #add value to end of list
    def append(value)
        if @head == nil
            @head = value   
            @tail = value   
        else 

            @tail.next_node = value
            @tail = value   
        end      
    end 

    #adds value to beginning of the list
    def prepend(value) 
        if @head == nil
            @head = value   
            @tail = value   
        else 
            value.next_node = @head
            @head = value    
        end   
    end

    def head
        return @head
    end
    def tail
        return @tail
    end

     #returns the total number of nodes in the list
    def size 
        if @head == nil
            return 0
        elsif @head.next_node == nil
            return 1
        else 
            count = 2
            node = @head.next_node
            while node.next_node != nil
                count += 1
                node = node.next_node
            end
            return count
        end     
    end


    def at(index) 
        #returns the node at the given index
    end

    def pop 
        #removes the last element from the list
    end
    
    def contains?(value) 
        #returns true if the passed in value is in the list and otherwise returns false.
    end

    def find(value) 
        #returns the index of the node containing value, or nil if not found.
    end

    def to_s
        node = @head
        str = ""
        while node.next_node != nil
            str += "( #{node.value} ) -> "
            node = node.next_node
        end
        str += "( #{@tail} ) -> nil"
        return str
        #represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    end

end


a = Node.new("node 1")
c = Node.new("node 2")
f = Node.new('hello')
g = Node.new('node 0')

list = Linked_list.new()
list.append(a)
list.append(c)
list.append(f)

puts list.head
puts list.tail

list.prepend(g)

puts list.head
puts list.tail
puts list.size

puts list