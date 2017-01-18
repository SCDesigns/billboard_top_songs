class TopSongs::Song

		attr_accessor :name, :position, :artist

		@@all = []

		def self.new_from_index(content)
			self.new(
				content.css("h2.chart-row__song").text,
				content.css("div.chart-row__container > div > a.chart-row__artist").text.split(" ").join(" "),
				content.css("span.chart-row__current-week").text
			)
		end

		def initialize(name=nil, artist=nil, position=nil)
			@name = name
			@artist = artist
			@position = position
			@@all << self
		end

		def self.all
			@@all
		end 

		def self.find(id)
			self.all[id-1]
		end

		def doc 
    		@doc ||= Nokogiri::HTML(open(self.url))
  		end
end