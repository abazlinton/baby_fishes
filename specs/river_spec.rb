require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestRiver < Minitest::Test

  def setup
    @fish1 = Fish.new("Bob")
    @fish2 = Fish.new("Harry")
    @fish3 = Fish.new("Fred")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3])
  end

  def test_a_river_has_a_name
    assert_equal("Amazon", @river.name)
  end

  def test_a_river_has_many_fish
    assert_equal(3, @river.number_of_fishes)
  end

  def test_can_supply_fish
    fish = @river.supply_fish
    assert_equal(@fish3.name, fish.name)
  end

  def test_river_can_trigger_spawning
    @river.trigger_spawning
    assert_equal(6, @river.number_of_fishes)
    assert_equal("Baby Fred", @river.supply_fish.name)
    assert_equal("Baby Harry", @river.supply_fish.name)
    assert_equal("Baby Bob", @river.supply_fish.name)
  end

end
