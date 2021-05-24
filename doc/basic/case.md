# Switch Case



## Usage

```ruby
case x
when 1..5
  "It's between 1 and 5"
when 6
  "It's 6"
when "foo", "bar"
  "It's either foo or bar"
else
  "You gave me #{x} -- I have no idea what to do with that."
end
```



## Ruby Case & Regex

You can also use [regular expressions](https://www.rubyguides.com/2015/06/ruby-regex/) as your `when` condition. In the following example we have a `serial_code` with an initial letter that tells us how risky this product is to consume.

````ruby
case serial_code
when /\AC/
  "Low risk"
when /\AL/
  "Medium risk"
when /\AX/
  "High risk"
end
````

