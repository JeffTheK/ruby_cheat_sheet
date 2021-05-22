# File
## Reading file

```ruby
  text = File.read('etc/my_file.txt')

  File.open('etc/my_file.txt', 'r') do |f|
    text = f.read
  end
```