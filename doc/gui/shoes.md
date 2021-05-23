# Shoes 4

## Description

Shoes is a little DSL for cross-platform (Mac, Windows, and Linux) GUI programming. It feels like real Ruby, rather than just another C++ library wrapper. For some samples, the manual, and a free book, check out [the Shoes website](http://shoesrb.com/).

## Basic Usage

Want to see what Shoes looks like? Well, here you go! Given the script:

```ruby
Shoes.app width: 300, height: 200 do
  background lime..blue

  stack do
    para "Welcome to the world of Shoes!"
    button "Click me" do alert "Nice click!" end
    image "http://shoesrb.com/img/shoes-icon.png",
          margin_top: 20, margin_left: 10
  end
end
```

This results in the following application:

[![shoes 4 screenshot Linux](https://camo.githubusercontent.com/e708cdd5e2954dd9f1cbde06d267232b14525ccd2e04c06f5dea51ca6582923e/687474703a2f2f7777772e70726167746f622e696e666f2f696d616765732f53686f6573253230342532305f3030342e706e67)](https://camo.githubusercontent.com/e708cdd5e2954dd9f1cbde06d267232b14525ccd2e04c06f5dea51ca6582923e/687474703a2f2f7777772e70726167746f622e696e666f2f696d616765732f53686f6573253230342532305f3030342e706e67)

The look and feel will differ for your operating system, as Shoes 4 uses native widgets.



## Installing Shoes 4

### Get a JDK and JRuby

So your first step is to install a [JDK](http://www.oracle.com/technetwork/java/javase/downloads/) and [JRuby](http://jruby.org/). Make sure to grab the appropriate JRuby your operating system. On Linux/Mac you can also use ruby installation tools to install JRuby. For instance [rvm](http://rvm.io/):

```shell
$ rvm install jruby
```

### Installing Shoes 4 as a gem

#### *nix (Mac OSX/Linux)

```
$ gem install shoes --pre
```

#### Windows

```
C:\tmp> jruby -S gem install shoes --pre
```



## Running a Shoes App

Shoes 4 comes with a command-line app runner. Just pass it the filename of your Shoes app.

```shell
$ bin/shoes samples/simple_sound.rb
```







## The Tutorial Walkthrough

Okay, so, a simple Shoes program.

![img](http://shoesrb.com/img/wt/001.png)

```ruby
      Shoes.app { button "Push me" }
```

The braces `{` and `}` are a kind of container. The button is “in” the app.



We can place a few buttons in a *stack*.

![img](http://shoesrb.com/img/wt/002.png)

```ruby
      Shoes.app {
        stack {
          button "A bed of clams"
          button "A coalition of cheetahs"
          button "A gulp of swallows"
        }
      }
  
```

Stacks are essential! The most important two elements in Shoes are *stacks* and *flows*.



Okay, let’s give the stack a bit of a *margin*. Scoot it out from the edge.

![img](http://shoesrb.com/img/wt/003.png)

```ruby
      Shoes.app {
        background white
        stack(margin: 8) {
          button "A bed of clams"
          button "A coalition of cheetahs"
          button "A gulp of swallows"
        }
      }
  
```

We also painted the *background* white. Did you see that?



Time for something new, artwork! Let’s draw!

![img](http://shoesrb.com/img/wt/004.png)

```ruby
      Shoes.app {
        oval(left:   10,
             top:    10,
             radius: 40)
      }
  
```

The Shoes brush always starts out black.

Notice that while buttons just dropped into the window, we drew the circle at a specific place. At 10 pixels from the left edge of the window and 10 pixels below the top edge.

------

Now, a rectangle and an arrow.

![img](http://shoesrb.com/img/wt/005.png)

```ruby
      Shoes.app {
        fill red
        rect(left:  10,
             top:   10,
             width: 40)
        arrow(left:  30,
              top:   60,
              width: 40)
      }
  
```

The *fill* is red on these shapes. And the *stroke* is black. (Because we didn’t change it.) These two pens - stroke and fill - draw every shape.

Did you see how the arrow is a little overtop of the rectangle?

------

Of course, you can always design your app with an *image*. Even images from the web!

![img](http://shoesrb.com/img/wt/nks-kidnap.png)

```ruby
  Shoes.app {
    image "http://spiralofhope.com/i/ruby-shoes--nks-kidnap.png"
  }
```

Shoes even caches images in memory and on disk, like browsers do. Images are loaded in background threads as well, to prevent apps from slowing down.



Now, a very important element: the *para*. As in: paragraph. Probably the third most important element (after stacks and flows.)

![img](http://shoesrb.com/img/wt/007.png)

```ruby
      Shoes.app {
        para strong("Q."), " Are you beginning to grasp hold of Shoes?"
      }
```



Beyond para, you’ve got *title* and *subtitle*, which are bigger fonts. You can add a bunch of font styles as well. Look for *strong* and *em* in this bit.

![img](http://shoesrb.com/img/wt/008.png)

```ruby
  Shoes.app {
    stack(margin: 6) {
      title "A Question"
      para strong("Q."), " Are you beginning to grasp hold of Shoes?"
      para em(strong("A."), " Quit pestering me, I'm hacking here.")
    }
  }
  
```

Keep track of stuff by naming them as variables.

![img](http://shoesrb.com/img/wt/009.png)

```ruby
  Shoes.app {
    @push = button "Push me"
    @note = para "Nothing pushed so far"
  }
  
```

You can then put the variables into action. When the button is clicked, the `@note` changes to the message shown in the picture.

![img](http://shoesrb.com/img/wt/010.png)

```ruby
  Shoes.app {
    @push = button "Push me"
    @note = para "Nothing pushed so far"
    @push.click {
      @note.replace "Aha! Click!"
    }
  }
  
```

See if you can figure out this one. How does the gradient work? How are the letters styled?

![img](http://shoesrb.com/img/wt/011.png)

```ruby
  Shoes.app do
    background "#F3F".."#F90"
    title("Shoooes",
          top:    60,
          align:  "center",
          font:   "Trebuchet MS",
          stroke: white)
  end
  
```

In this example, I used *do* and end *rather* than the braces `{` and `}`. They have the same meaning.

------

Aha, here’s a flow. It keeps the text box and the button side-by-side.

![img](http://shoesrb.com/img/wt/012.png)

```ruby
  Shoes.app do
    background "#EFC"
    border("#BE8",
           strokewidth: 6)

    stack(margin: 12) do
      para "Enter your name"
      flow do
        edit_line
        button "OK"
      end
    end
  end
  
```

------

In this one, we make a five-point star. And it follows the mouse around as you move.

![img](http://shoesrb.com/img/wt/013.png)

```ruby
  Shoes.app do
    @shape = star(points: 5)
    motion do |left, top|
      @shape.move left, top
    end
  end
  
```

------

On to a taste of animation. The Shoes icon moves randomly a bunch of times each second.

![img](http://shoesrb.com/img/wt/014.png)

```ruby
  Shoes.app do
    @shoes = image(
      "http://spiralofhope.com/i/ruby-shoes--shoes.png",
      top:  100,
      left: 100
    )
    animate do |i|
      @shoes.top += rand(-20..20)
      @shoes.left += rand(-20..20)
    end
  end
  
```

------

Remember a few examples ago when we handled a button click? How about doing the same with a link?

![img](http://shoesrb.com/img/wt/015.png)

```ruby
    Shoes.app do
      @poem = stack do
        para "My eyes have blinked again
    And I have just realized
    This upright world
    I have been in.
    My eyelids wipe
    My eyes hundreds of times
    Reseting and renovating
    The scenery."
      end
      para(
        link("Clear").click do
          @poem.clear
        end
      )
    end
  
```

So, when the link gets clicked, the stack gets cleared. The poem will disappear.

------

Okay, last one for now. Let’s generate a hundred random circles. This example also uses the *rgb* method to make colors from red, green and blue fractions.

![img](http://shoesrb.com/img/wt/016.png)

```ruby
    Shoes.app(width: 300, height: 400) do
      fill rgb(0, 0.6, 0.9, 0.1)
      stroke rgb(0, 0.6, 0.9)
      strokewidth 0.25

      100.times do
        oval(left:   rand(-5..self.width),
             top:    rand(-5..self.height),
             radius: rand(25..50))
      end
    end
    
  
```

Don’t worry if you haven’t picked up a whole lot reading through these. To get the hang of it, you’ll need to alter these yourself. Try fiddling with the numbers and colors. Experiment, you know?