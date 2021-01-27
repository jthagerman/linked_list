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

     #returns the node at the given index
    def at(index) 
        if(index == 0)
            return @head
        end
        count = 0
        node = @head
        while(node.next_node != nil)
            node = node.next_node
            count += 1
            if(count == index)
                return node
            end
        end
        return nil
    end

    #removes the last element from the list
    def pop 
        node = @head
        while(node.next_node != @tail)
            node = node.next_node
        end
        @tail = node
        @tail.next_node = nil 
    end
    
    #returns true if the passed in value is in the list and otherwise returns false.
    def contains?(value) 
        node = @head
        while(node.value != value)
            node = node.next_node
            if(node == @tail) && (node.value != value)
                return false
            end
        end
        return true
    end

     #returns the index of the node containing value, or nil if not found.
    def find(value) 
        index = 0
        node = @head
        while(node.value != value)
            node = node.next_node
            index += 1
            if(node.value == value)
                return index
            end
            if(node == @tail) && (node.value != value)
                return nil
            end
        end
        return 0    
    end

    def insert_at(value, index)
        node = @head
        count = 0
        if(index == 0)
            value.next_node = @head
            @head = value
        else
            puts size()
            if(index > size())
                puts "out of bounds"
            else
                while(node.next_node != nil)
                                     
                    node = node.next_node
                    count += 1
                    if(count == index-1)
                        if(node == @tail)
                            @tail.next_node = value
                            @tail = value  
                            break 
                        end
                        next_n = node.next_node
                        node.next_node = value
                        value.next_node = next_n
                        break
                    end
                end
            end
        end
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
    end
end
