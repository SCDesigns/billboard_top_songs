class TopSongs::Song

		attr_accessor :name, :position, :artist, :last_week, :peak, :weeks_on, :url

		@@all = []

		def self.new_from_index(content)
			self.new(
				"http://www.billboard.com/charts/hot-100",
				content.css("h2.chart-row__song").text,
				content.css("div.chart-row__container > div > a.chart-row__artist").text.split(" ").join(" "),
				content.css("span.chart-row__current-week").text,
				content.css("div.chart-row__last-week > span.chart-row__value").text.split,
				content.css("div.chart-row__top-spot > span.chart-row__value").text.split,
				content.css("div.chart-row__weeks-on-chart > span.chart-row__value").text.split
			)
		end

		def initialize(url=nil, name=nil, artist=nil, position=nil, last_week=nil, peak=nil, weeks_on=nil)
			@url = url
			@name = name
			@artist = artist
			@position = position
			@last_week = last_week
			@peak = peak
			@weeks_on = weeks_on
			@@all << self
		end

		def self.all
			@@all
		end 
end