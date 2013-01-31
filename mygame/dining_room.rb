class DiningRoom < Game

  def start

    if @player.inventory.include?("candle")
      puts "You are unable to see in this room so you light your candle."
      puts "You are in a dining room."
      puts "There is a key on the dining room table."
      puts "You take the key, and head back to the main hall."
      @player.inventory << "key" unless @player.inventory.include?("key")
      main_hall = MainHall.new @player
      main_hall.start

     else
      puts "You are in a dark room."
      puts "You can't see a thing."
      puts "What would you like to do?"
      puts "Attempt to search the room, call for help, or return to the main hall?"

      prompt; your_choice = gets.chomp

      if your_choice.include? "search" && @player.inventory.include?("knife")
        die <<-MESSAGE
        You wander aimlessly into the dark room,
        You feel someone push you from behind.
        Falling onto your knife you bleed to death, how sad..
        MESSAGE
      elsif your_choice.include? "search"
        puts "You wander aimlessly in this room and find nothing."
        puts "You return to the main hall."
        main_hall = MainHall.new @player
      elsif your_choice.include? "call"
        puts "You call out for help."
        puts "You can hear someone whisper your name from behind."
        puts "You felt safer in the main hall."
        main_hall = MainHall.new @player
      else
        puts "you shouldn't see this."
      end
    end
  end
end
