require './test/test_helper'

class PatronTest < MiniTest::Test
  def setup
    @patron_1 = Patron.new("Bob", 20)
  end

  def test_it_exists
    assert_instance_of Patron, @patron_1
  end
end
