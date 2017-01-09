class TopSongs::CLI

	def call
		puts "Welcome to the Billboard Hot 100! The definitive listing of the top 100 songs in America!"
		start
	end

	def start
		puts ""
		puts "What segment of the rankings would you like to view?"
		puts "1-20, 21-40, 41-60, 61-60, 81-100"
		puts ""
		input = gets.strip.to_i

		print_songs(input)

		puts ""
		puts "Is there a particular song you would like more info on? If so please enter it's corresponding ranking."
		input = gets.strip.to_i

		song = TopSongs::Song.find(input.to_i)

		print_song(song)

		puts ""
		puts "Would you like to view more songs? Y or N?"
		if input == "Y || y"
			start
		else
			puts "Thank You for visiting!"
			exit
		end
	end

	def print_song(song)
	end

	def print_songs(num)
	puts ""
   	puts "---------- Songs: #{num} - #{num+9} ----------"
    puts ""
    TopSongs::Song.all[num-1, 10].each.with_index(num) do |song, rank|
      puts "#{rank}. #{song.name} - #{song.artist}"
	end
end
end