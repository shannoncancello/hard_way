module Stuff
	INVENTORY = []
end

def prompt()
	print "> "
end

def start()
	puts "You have arrived on a dark door step of an unfamilar house."
	puts "You were given this address by a friend."
	puts "There is a door in front of you, what would you like to do?"
	puts "Knock on the door?  Open the door?"

	prompt; your_choice = gets.chomp

	if your_choice.include? "knock"
		puts "The door creeks open, but no one is behind it.  You enter."
		main_hall()
	elsif your_choice.include? "open"
		puts "The floor beneath you opens and you fall to your death.  Maybe next time you should knock."
		Process.exit(0)
	else
		puts "Nothing happens, and you wait on the porch until you starve to death."
		Process.exit(0)
	end
end

def main_hall()
	puts "You are in the main hall of the house."
	puts "There is a room to your right, a staircase, and a door to your left."
	puts "What room would you like to go into?"

	prompt; your_choice = gets.chomp

	if your_choice.include?("right")
		kitchen()
	elsif your_choice.include?("left")
		dining_room()
	else
		staircase()
	end
end

def kitchen()
	puts "You are in a kitchen."
	puts "There is a candle and matches, a knife, and a pantry door."
	puts "Would you like to take something, or search the pantry?"

	prompt; your_choice = gets.chomp

	if your_choice.include?("take")
		puts "Which item would you like to take?"
		
		prompt; take_something = gets.chomp

		if take_something.include? "candle" || "matches"
			Stuff::INVENTORY << 1
			puts "You decide to return to the main hall with your candle and matches."
			main_hall()
		elsif take_something.include? "knife"
			Stuff::INVENTORY << 2
			puts "You decide to return to the main hall with your knife."
			main_hall()
		end

	elsif your_choice.include? "search"
		puts "You search the pantry and find a mutilated corpse."
		puts "You drop dead from fear."
		Process.exit(0)
	end
end

def dining_room()
	if Stuff::INVENTORY.include?(1) 
		puts "You are unable to see in this room so you light your candle."
		puts "You are in a dining room."
		puts "There is a key on the dining room table."
		puts "You take the key, and head back to the main hall."
		Stuff::INVENTORY << 3
		main_hall()
 
	 else	
		puts "You are in a dark room."
		puts "You can't see a thing."
		puts "What would you like to do?"
		puts "Attempt to search the room, call for help, or return to the main hall?"

		prompt; your_choice = gets.chomp

		if your_choice.include? "search"
			puts "You wander aimlessly in this room and find nothing."
			puts "You return to the main hall."
			main_hall()
		elsif your_choice.include? "call"
			puts "You call out for help."
			puts "You can hear someone whisper your name from behind."
			puts "You felt safer in the main hall."
			main_hall()
		else
			puts "you shouldn't see this."
		end
	end
end

def staircase()
	if Stuff::INVENTORY.include?(1)
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
			main_hall()
		else
			puts "You return to the main hall."
			main_hall()
		end
	end
end

start()


#Haunted house
#start off on the porch to the house
#You must enter by knocking, the door will open with no one behind it.
#if you try to open the door a trap door will open below you and you will fall to your death
#you are in the main hall, there will be two rooms and a staircase
#room 1 living room, it is dark, no lights.
#go back to the main hall? Search for a light source? Call for help?
#if search sudden death, to be determined.
#call for help, whispers your name
#room 2 the kitchen, there is a candle and matches, a knife, and a pantry
#what would you like to do? if take add to inventory
#if search death! not sure how yet
#back to main hall?
#staircase leads to a locked door. Would you like to try to open it?
#if you try to open it, suprise nothing happens, lucky bastard.
#after getting the candle and matches and taking them back to room 1 another prompt
#would you like to light the candle? if so there are a set of keys on the dining room table
#if the knife was taken and you try to search the room someone will push you from behind
#sending you onto your knife to your death, congrats!!!!!! cant figure out!!
#take the key, and another prompt on where to go next.
#If you go to the stair case and use the key on the door, it will open to your suprise birthday party!
#congrats your friends are dicks, what a surprise!