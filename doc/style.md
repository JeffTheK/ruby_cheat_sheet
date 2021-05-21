# Style

## Class
Good

``` ruby
class SomeKindOfClass

end
```

Bad

```ruby
class someOtherKindOfClass

end

class foo_bar

end
```

## Method
Good

```ruby
def foo_bar_something(foo, bar)
  ...
end

def foo_bar_something foo, bar
  ...
end
```

Bad

```ruby
def badMethodName( foo, bar )
  ...
end
```

## Variable
Good

```ruby
# local variable
some_var = ''

# global variable
$global_var = ''

# constant variable
SOME_CONSTANT = ''
```

Bad

```ruby
someBadVar = ''
```