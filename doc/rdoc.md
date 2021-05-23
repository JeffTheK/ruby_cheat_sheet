# RDoc

## Description

RDoc produces HTML and command-line documentation for Ruby projects. RDoc includes the `rdoc` and `ri` tools for generating and displaying documentation from the command-line.



## Generating Documentation

Once installed, you can create documentation using the `rdoc` command

```shell
$ rdoc [options] [names...]
```

For an up-to-date option summary, type

```shell
$ rdoc --help
```

A typical use might be to generate documentation for a package of Ruby source (such as RDoc itself).

```shell
$ rdoc
```



## Writing Documentation

To write documentation for RDoc place a comment above the class, module, method, constant, or attribute you want documented:

```ruby
# This class represents an arbitrary shape by a series of points.
class Shape
  # Creates a new shape described by a +polyline+.
  def initialize polyline
    # ...
  end
end
```