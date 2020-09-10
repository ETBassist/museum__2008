require './test/test_helper'

class ExhibitTest < MiniTest::Test
  def setup 
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
  end

  def test_it_exists
    assert_instance_of Exhibit, @exhibit
  end
end
