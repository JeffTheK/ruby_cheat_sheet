# MiniTest
[github-homepage](github.com/seattlerb/minitest)

## Description
minitest provides a complete suite of testing facilities supporting TDD, BDD, mocking, and benchmarking.

## Unit Tests
```ruby
require "minitest/autorun"

class TestAdd < Minitest::Test
  # runs before every test
  def setup
    
  end

  def test_two_plus_two_equals_four
    assert_true(2 + 2 == 4)
  end
end
```