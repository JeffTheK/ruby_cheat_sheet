# Array

An Array is an ordered, integer-indexed collection of objects, called *elements*. Any object may be an Array element.

## Initializing

````ruby
a = Array.new # => empty array
a = Array.new([:foo, 'bar', 2]) #=> [:foo, "bar", 2]
a = Array.new(3, 'x') # => ['x', 'x', 'x']

a = [] # => []
a = [3, true] # => [3, true]
````



## Accessing elements

````ruby
a = [2, 'bar', :foo, 'baz', 7]

a[0] # => 2
a[-1] # => 7
a[-2] # => 'baz'

a[0..1] # => [2, 'bar']

a.first # => 2
a.last # => 7
````



## Adding elements

````ruby
a =  [3, true]
a << 'foo' # => [3, true, 'foo']

a = [:foo, 'bar', 2]
a.push(:baz, :bat) # => [:foo, "bar", 2, :baz, :bat]

a = [:foo, 'bar', 2]
a.insert(1, :bat, :bam) # => [:foo, :bat, :bam, "bar", 2]
````



## Deleting elements

````ruby
a.clear # => [] removes elements

a = ['foo', 'bar', 'bar', 'bar']
a.delete('bar') # => ['foo']

a = [1, 2, 3, 4, 5]
a.delete_at(2) # => [1, 2, 4, 5]

a = [:foo, 'bar', 2, 'bat']
a.delete_if {|element| element.to_s.start_with?('b') } # => [:foo, 2]
````



## Other

```ruby
a = [:foo, 'bar', 2] 
a.each {|element|  puts "#{element.class} #{element}" } # Iterates over array elements.


a = [:foo, 'bar', 2]
a.each_index {|index|  puts "#{index} #{a[index]}" } # Iterates over array indexes.

[].empty? # => true

# Calls the block, returns a new Array containing those elements of self for which the block returns a truthy value:
a = [:foo, 'bar', 2, :bam] 
a1 = a.select {|element| element.to_s.start_with?('b') }
a1 # => ["bar", :bam]

```