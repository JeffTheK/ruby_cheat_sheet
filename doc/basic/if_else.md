## If Else
```ruby
number = gets.chomp.to_i

if number > 5
  puts('number is greater than 5')
elsif number < 3
  puts('number is less than 3')
else
  puts("number is: #{number}")
end

puts('number is very large') if number > 8651515
```