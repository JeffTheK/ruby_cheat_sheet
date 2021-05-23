# Ruby-GNOME

[github-homepage](https://github.com/ruby-gnome/ruby-gnome)

[![Ruby-GNOME Logo](https://avatars1.githubusercontent.com/u/416159?v=3&s=200)](https://avatars1.githubusercontent.com/u/416159?v=3&s=200) Ruby bindings for GNOME

This is a set of bindings for the GNOME 3.x and 4.x libraries to use from Ruby 2.5, 2.6 and 2.7.

## 

## Installation

```shell
gem install gtk3
```



## Tutorial

To begin our introduction to GTK, we'll start with the simplest program possible. This program will create a 200x200 pixel window and has no way of exiting except to be killed by using the shell:

```ruby
require 'gtk2'
window = Gtk::Window.new
window.show
Gtk.main
```

Save this program in a file named base.rb, and call it with:

```shell
ruby base.rb
```