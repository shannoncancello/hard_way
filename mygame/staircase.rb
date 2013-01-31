class Staircase < Game

def start

 if @player.inventory.include?("key")
    puts "You have a key that will fit this door."
    puts "You put the key in the hole and open it."
    puts "All your friends are waiting behind the door!"
    puts "It's a surprise party!"
    puts "Your friends have a sick sense of humor...."
    Process.exit(0)
  else
    puts "The is a door at the top of the staircase."
    puts "Would you like to open it?"

    prompt; your_choice = gets.chomp

    if your_choice.include? "yes"
      puts "The door is locked, you decide to go back to the main hall."
      main_hall = MainHall.new @player
      main_hall.start
    else
      puts "You return to the main hall."
      main_hall = MainHall.new @player
      main_hall.start
    end
  end
end
end
