class TopSongs::Scraper

  def scrape_page
    doc = Nokogiri::HTML(open("http://www.billboard.com/charts/hot-100"))
  end 
  
  def scrape_songs
    self.scrape_page.css("article.chart-row")
  end

  def make_songs
    scrape_songs.each do |content| 
      TopSongs::Song.new_from_index(content)
    end  
  end
end 