class Fish
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def have_baby
    return Fish.new("Baby #{@name}")
  end

end
