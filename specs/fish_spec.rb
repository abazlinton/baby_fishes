require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class TestFish < Minitest::Test

  def test_fish_has_a_name
    fish = Fish.new("Bob")
    assert_equal("Bob", fish.name)
  end

  def test_fish_can_have_babies
    fish = Fish.new("Bob")
    baby = fish.have_baby
    assert_equal("Baby Bob", baby.name)
  end

end
