class River

  attr_reader :name

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def number_of_fishes
    return @fishes.size
  end

  def supply_fish
    return @fishes.pop
  end

  def trigger_spawning
    baby_fishes = []
    for fish in @fishes
      baby_fish = Fish.new("Baby #{fish.name}")
      # OR -
      # baby_fish = fish.have_baby
      baby_fishes << baby_fish
    end
    @fishes.concat(baby_fishes)
  end


end
