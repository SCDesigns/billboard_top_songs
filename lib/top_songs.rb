add_runtime_dependency 'nokogiri', '~> 0'
add_development_dependency 'pry', '~> 0'
require "open-uri"

require "./lib/top_songs/version"
require "./lib/top_songs/cli"
require "./lib/top_songs/song"
require "./lib/top_songs/scraper"
