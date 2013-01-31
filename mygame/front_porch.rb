class FrontPorch < Game

  def start

    puts "You have arrived on a dark door step of an unfamilar house."
    puts "You were given this address by a friend."
    puts "There is a door in front of you, what would you like to do?"
    puts "Knock on the door?  Open the door?"

    prompt; your_choice = gets.chomp

    if your_choice.include? "knock"
      puts "The door creeks open, but no one is behind it.  You enter."
      main_hall = MainHall.new @player
      main_hall.start
    elsif your_choice.include? "open"
      die("The floor beneath you opens and you fall to your death.  Maybe next time you should knock.")
    else
      die "Nothing happens, and you wait on the porch until you starve to death."
    end
  end


end