class TopSongs::Song
	attr_accessor :name, :artist, :rating

	@@all = []

	def initialize(name = nil, artist = nil, rating = nil)
		@name = name
		@artist = artist
		@rating = rating
		@@all << self
	end

	def self.all
		@@all
	end

	@doc = Nokogiri::HTML(open("http://www.billboard.com/charts/hot-100"))

	def name
		self.name = doc.search("chart-row__song").text.strip
	end

	def artist
		self.artist = doc.search("chart-row__artist").text.strip
	end

	def rating
		self.rating= doc.search("chart-row__current-week").text.strip
	end
end