# Style

## Class
:heavy_check_mark: Good

``` ruby
class SomeKindOfClass

end
```

:x: Bad

```ruby
class someOtherKindOfClass

end

class foo_bar

end
```

## Module
:heavy_check_mark: ​Good

```ruby
module SomeKindOfModule

end
```

:x: ​Bad

```ruby
module badNameForModule

end
```

## Method
:heavy_check_mark: ​Good

```ruby
def foo_bar_something(foo, bar)
  ...
end

def foo_bar_something foo, bar
  ...
end
```

:x: ​Bad

```ruby
def badMethodName( foo, bar )
  ...
end
```

## Variable
:heavy_check_mark: ​Good

```ruby
# local variable
some_var = ''

# global variable
$global_var = ''

# constant variable
SOME_CONSTANT = ''
```

:x: ​Bad

```ruby
someBadVar = ''
```