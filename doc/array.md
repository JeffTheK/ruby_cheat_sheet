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



## Deleting elements

````ruby
a.clear # => [] removes elements

a = ['foo', 'bar', 'bar', 'bar']
a.delete('bar') # => ['foo']

a = [:foo, 'bar', 2, 'bat']
a.delete_if {|element| element.to_s.start_with?('b') } # => [:foo, 2]
````