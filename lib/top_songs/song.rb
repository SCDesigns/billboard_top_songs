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

	def self.find(id)
    	self.all[id-1]
  	end

	def self.scrape
	  @doc ||= Nokogiri::HTML(open("http://www.billboard.com/charts/hot-100"))
		self.name = doc.xpath("chart-row__song").text
		self.artist = doc.xpath("chart-row__artist").text
		self.rating = doc.xpath("chart-row__current-week").text
	end
end