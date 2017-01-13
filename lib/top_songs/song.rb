class TopSongs::Song
	attr_accessor :name, :artist, :position

	@@all = []

	def initialize(url=nil, name=nil, artist=nil, position=nil)
		@url = url
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

	def name
		@name = doc.seach("h2.chart-row__song").first.text
	end

	def artist
		@artist = doc.search("a.chart-row__artist").first.text.strip
	end

	def position
		@position = doc.search("span.chart-row__current-week").first.text
	end

	def self.find(id)
    	self.all[id-1]
  	end

    def self.scrape_top_songs
      doc = Nokogiri::HTML(open('http://www.billboard.com/charts/hot-100'))
    end

    def doc
      @doc ||= Nokogiri::HTML(open(self.url))
    end
end