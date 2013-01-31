class Kitchen < Game

  def start
    puts "You are in a kitchen."
    puts "There is a candle and matches, a knife, and a pantry door."
    puts "Would you like to take something, or search the pantry?"

    prompt; your_choice = gets.chomp

    if your_choice.include?("take")
      puts "Which item would you like to take?"

      prompt; take_something = gets.chomp

      if take_something.include? "candle" || "matches"
        @player.inventory << "candle" unless @player.inventory.include?("candle")
        puts "You decide to return to the main hall with your candle and matches."
        main_hall = MainHall.new @player
        main_hall.start
      elsif take_something.include? "knife"
        @player.inventory << "knife" unless @player.inventory.include?("knife")
        puts "You decide to return to the main hall with your knife."
        main_hall = MainHall.new @player
        main_hall.start
      end

    elsif your_choice.include? "search"
      die "You search the pantry and find a mutilated corpse.\nYou drop dead from fear."
    end
  end
end