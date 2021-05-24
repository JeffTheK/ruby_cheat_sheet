# C Extension

Writing a C extension allows you to interact with Ruby from C.

You may want to this if there is a particular important method you would like to optimize with the speed of C, or if you would like to create an interface between a C library and Ruby.



## Usage

Create a file named `extconf.rb` with these contents:

````ruby
require 'mkmf'

create_header
create_makefile 'foobar'
````

Then run `ruby extconf.rb` which will create a few files for you (`Makefile` & `extconf.h`). Don’t change these files.



Now create `foobar.c`, this name comes from the `create_makefile` line in `extconf.rb`. You can change it if you want but it has to match your `.c` filename for this to work.

Inside `foobar.c` you add this:

````c
#include "ruby.h"
#include "extconf.h"

void Init_foobar()
{
  // Your C code goes here
}
````

This is the basic skeleton of your C extension. Notice that you have to use the name you declared on `extconf.rb` plus the word `Init_`. In this case `Init_foobar`.

You can compile this by running `make`, and what you get is a `so` file which you can load into your Ruby application using `require`.



## Writing A Ruby Method From C

You can create c functions that you can call from your Ruby code. This is how built-in classes & methods work.

All the Ruby methods have to return a `VALUE`. A `VALUE` is a Ruby object.

**Example**:

````c
VALUE rb_return_nil() {
  return Qnil;
}
````

Now we need to attach this function to a Ruby class or module. You can create a new class or use an existing one.

**Here I’m creating a module**:

````c
void Init_foobar() {
  VALUE mod = rb_define_module("FooModule");

  rb_define_method(mod, "return_nil", rb_return_nil, 0);
}
````

You can use the `rb_define_method` method to attach the C function to this module.



**The arguments are**:

| Argument       | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| mod            | Module object                                                |
| “print_hello”  | Name of the Ruby method                                      |
| rb_print_hello | Name of the C function                                       |
| 0              | Number of arguments this method takes, use -1 for variable arguments |

Now run `make` again to compile the extension, and try it like this:

````ruby
require 'foobar'

include FooModule
return_nil
````

There you go, you just called a C function from Ruby!