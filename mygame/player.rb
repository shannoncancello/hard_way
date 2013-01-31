class Player
  attr_accessor :inventory

  def initialize(inventory = nil)
    @inventory = inventory || []
  end
end