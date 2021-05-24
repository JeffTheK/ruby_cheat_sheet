# Code Blocks

Ruby blocks are little anonymous functions that can be passed into methods.

Blocks are enclosed in a `do / end` statement or between brackets `{}`, and they can have multiple arguments.

The argument names are defined between two pipe `|` characters.

````ruby
[1, 2, 3].each { |n| puts n }
                 ^^^^^ ^^^^^^^^
                 block   block
               arguments body
````

OR

````ruby
[1, 2, 3].each do |num|
  puts num
end
````



## Yield Keyword

Yield is a **Ruby keyword** that calls a block when you use it.

It’s how methods USE blocks!

When you use the `yield` keyword, **the code inside the block will run** & do its work.

**Here’s an example**:

````ruby
def print_once
  yield
end

print_once { puts "Block is being run" }
````

This runs any block passed to `print_once`, as a result, `"Block is being run"` will be printed on the screen.



## Implicit vs Explicit Blocks

Blocks can be “explicit” or “implicit”.

Explicit means that you give it a name in your parameter list.

You can pass an explicit block to another method or save it into a variable to use later.

**Here is an example**:

````ruby
def explicit_block(&block)
  block.call # same as yield
end

explicit_block { puts "Explicit block called" }
````

Notice the `&block` parameter…