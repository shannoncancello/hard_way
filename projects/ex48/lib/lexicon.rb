class Lexicon

	attr_accessor :token, :word

word_hash = {"direction" => "north", "direction" => "south", "direction" =>
				"east", "direction" => "west", "direction" => "down", "direction" =>
				"up", "direction" => "left", "direction" => "right", "direction" =>
				"back", "verb" => "go", "verb" => "stop", "verb" => "kill", 
				"verb" => "eat", "stop" => "the", "stop" => "in", "stop" => "of",
				"stop" => "from", "stop" => "at", "stop" => "it", "noun" => "door",
				"noun" => "bear", "noun" => "princess", "noun" => "cabinet",}

	def initialize(token, word)
		@token = token
		@word = word
	end

	def scan(stuff)

		stuff = gets.chomp
		words = stuff.split( )
	end
end
