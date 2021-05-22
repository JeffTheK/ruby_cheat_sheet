# File
## Reading file

```ruby
 text = File.read('etc/my_file.txt')

 File.open('etc/my_file.txt', 'r') do |f|
   text = f.read
 end
```



## Writing file

````ruby
File.open("bin/log.txt", "w") do |f|
  f.write "some kind of text"
end

File.write("bin/log.txt", "data...")
File.write("bin/log.txt", "data...", mode: "a")
````



## File modes

````ruby
"r"  # Read-only, starts at beginning of file  (default mode).

"r+" # Read-write, starts at beginning of file.

"w"  # Write-only, truncates existing file
     # to zero length or creates a new file for writing.

"w+" # Read-write, truncates existing file to zero length
     #  or creates a new file for reading and writing.

"a"  #  Write-only, each write call appends data at end of file.
     # Creates a new file for writing if file does not exist.

"a+" # Read-write, each write call appends data at end of file.
     # Creates a new file for reading and writing if file does
     # not exist.


# The following modes must be used separately, and along with one or more of the modes seen above.

"b" # Binary file mode
    # Suppresses EOL <-> CRLF conversion on Windows. And
    # sets external encoding to ASCII-8BIT unless explicitly
    # specified.

"t" # Text file mode
````



