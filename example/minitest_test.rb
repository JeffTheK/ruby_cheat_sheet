require 'minitest/autorun'

class MiniTestExample < MiniTest::Test
  def test_two_plus_two
    assert_equal(4, 2 + 2)
  end
end
