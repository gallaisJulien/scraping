require 'httparty'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'rspec'

def scraping(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)

  html = HTTParty.get(url)
  response = Nokogiri::HTML(html)

  

end