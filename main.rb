require_relative 'node'
require_relative 'linked_list'

#testing

a = Node.new("node 1")
c = Node.new("node 2")
f = Node.new('hello')
g = Node.new('node 0')
z = Node.new("tubular")

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

puts list.contains?('hell')
puts list.contains?('hello')
puts list.find('node 3')
#list.pop
puts list
puts list.at(0)

list.insert_at(z,2)
puts list