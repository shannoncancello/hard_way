class Game

  attr_accessor :player

  def initialize(player = nil)
    @player = player || Player.new
  end


  def prompt
    print "> "
  end

  def die(message)
    puts message
    Process.exit(0)
  end

  def play
    porch = FrontPorch.new @player
    porch.start
  end
end