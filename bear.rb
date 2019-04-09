class Bear
  attr_accessor :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @fishes = []
  end

  def roar
    return "Rooooar"
  end

  def number_fishes_in_belly
    return @fishes.count
  end

  def take_fish_from_river(river)
    fish = river.supply_fish()
    @fishes << fish if !fish.nil?
  end

end
