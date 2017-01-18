class TopSongs::CLI

	def call
		start
	end

	def list
		TopSongs::Scraper.new.make_songs
		puts "Welcome to the Billboard Hot 100! The definitive listing of the top 100 songs in America!"
		puts ""
		puts "What segment of the rankings would you like to view?"
		puts "1-20, 21-40, 41-60, 61-60, 81-100"
		puts ""

		num = gets.to_i

		puts ""
		puts "-*-*-*-*-*| Songs #{num} - #{num+19} |*-*-*-*-*-"
		puts ""
		TopSongs::Song.all[num-1, 20].each do |song|
      	puts "#{song.position}. #{song.name} - #{song.artist}"
		end
	end

	def start
		list
		input = nil
		while input != "exit"
			puts ""
			puts "Is there a particular song you would like more info on? If so please enter it's corresponding ranking."
			puts ""

			input = gets.to_i

			if input == "list"
				list
			end

			puts ""
			puts "Enter 'list' to view the list of songs again. Or 'exit' to end the program."
			puts ""

			input = gets.strip

			if input == "list"
				list
			end

			puts ""
			puts "Thank you for visiting!"
			exit
		end
	end
end