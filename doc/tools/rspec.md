# RSpec

[homepage](https://rspec.info)

RSpec is a unit test framework for the Ruby programming language. RSpec is different than traditional xUnit frameworks like JUnit because RSpec is a Behavior driven development tool. What this means is that, tests written in RSpec focus on the “behavior” of an application being tested.



## Installation

````shell
gem install rspec
````



## Tests Structure

RSpec uses the words "describe" and "it" so we can express concepts like a conversation:

```ruby
RSpec.describe Order do
  it "sums the prices of its line items" do
    order = Order.new

    order.add_entry(LineItem.new(:item => Item.new(
      :price => Money.new(1.11, :USD)
    )))
    order.add_entry(LineItem.new(:item => Item.new(
      :price => Money.new(2.22, :USD),
      :quantity => 2
    )))

    expect(order.total).to eq(Money.new(5.55, :USD))
  end
end
```

### Nested Groups

You can also declare nested groups using the `describe` or `context` methods:

```ruby
RSpec.describe Order do
  context "with no items" do
    it "behaves one way" do
      # ...
    end
  end
end
```



## Running Tests

To run individual file:

````shell
$ rspec your_file_name_here
````

