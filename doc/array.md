# Array

An Array is an ordered, integer-indexed collection of objects, called *elements*. Any object may be an Array element.

## Initializing

````ruby
a = Array.new # => empty array
a = Array.new([:foo, 'bar', 2]) #=> [:foo, "bar", 2]
a = Array.new(3, 'x') # => ['x', 'x', 'x']
````



## Deleting elements

````ruby
a.clear # => [] removes elements

a = ['foo', 'bar', 'bar', 'bar']
a.delete('bar') # => ['foo']

a = [:foo, 'bar', 2, 'bat']
a.delete_if {|element| element.to_s.start_with?('b') } # => [:foo, 2]
````

