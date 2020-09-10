require './test/test_helper'

class ExhibitTest < MiniTest::Test
  def setup 
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
  end

  def test_it_exists
    assert_instance_of Exhibit, @exhibit
  end

  def test_can_get_attributes_from_exhibit
    assert_equal "Gems and Minerals", @exhibit.name
    assert_equal 0, @exhibit.cost
  end
end
