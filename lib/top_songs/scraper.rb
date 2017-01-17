class TopSongs::Scraper

  def self.scrape_page
    doc = Nokogiri::HTML(open("http://www.billboard.com/charts/hot-100"))
    binding.pry
  end 
  
  def self.scrape_songs
    self.scrape_page.css("div.chart-row__primary div.chart-row__main-display")
  end

  def make_songs
    scrape_songs.each do |data| 
      TopSongs::Song.new_from_index(data)
    end  
  end
end
