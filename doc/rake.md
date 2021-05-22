# Rake
[github-homepage](github.com/ruby/rake)
## Description
Rake is a [make](gnu.org/software/make/)-like utility for ruby

## Rakefile
```ruby
task :name do
  # ...
end

# Any prerequisites are given as a list (enclosed in square brackets) following the name and an arrow (=>). 
task :name [:prereq1, :prereq2] do
  # ...
end
```



## Run tasks

````shell
$ rake some_task_name
````