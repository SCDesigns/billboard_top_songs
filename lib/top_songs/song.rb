class TopSongs::Song

		attr_accessor :name, :position, :artist

		@@all = []

		def self.new_from_index(data)
			self.new(
				data.css("h2.chart-row__song").first.text,
				data.css("a.chart-row__artist a.Artist Name").first.text.strip,
				data.css("div.info-module__rank").first.text
			)
		end

		def initialize(name=nil, url=nil, location=nil, position=nil)
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