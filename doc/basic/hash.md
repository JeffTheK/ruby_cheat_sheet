# Hash

A Hash maps each of its unique keys to a specific value.

A Hash has certain similarities to an Array, but:

- An Array index is always an Integer.
- A Hash key can be (almost) any object.



## Initializing

````ruby
a = {} # => {}
a = { :foo => 0, 'bar' => 1, false => 2 } # => { :foo => 0, 'bar' => 1, false => 2 }

a = Hash.new # => {}
````



## Adding elements

````ruby
h = {}
h[:foo] = 1 # => { :foo => 1 }
h.store(:bar, 2) # => {:foo => 1, :bar => 2}
````
