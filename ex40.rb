class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end
end

happy_bday = Song.new(["happy birthday to you",
					"I don't want to get sued",
					"So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
						"With pockets full of shells"])

here_it_goes_again = Song.new(["Just when you think that you're in control",
							"Just when you think that you've got a hold",
							"Just then you get on a roll"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

here_it_goes_again.sing_me_a_song()