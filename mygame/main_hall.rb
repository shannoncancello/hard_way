class MainHall < Game
  def initialize
    start
  end

  def start
    puts "You are in the main hall of the house."
    puts "There is a room to your right, a staircase, and a door to your left."
    puts "What room would you like to go into?"

    prompt; your_choice = gets.chomp

    if your_choice.include?("right")
      kitchen = Kitchen.new @player
      kitchen.start
    elsif your_choice.include?("left")
      dining_room(
    else
      staircase()
    end
  end
end