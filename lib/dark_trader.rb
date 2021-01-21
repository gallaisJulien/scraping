require 'rubygems'
require 'nokogiri'
require 'open-uri'

def scraping(url)
  parsed_page = Nokogiri::HTML(URI.open(url))
  crypto_array = Array.new
  raws = parsed_page.xpath('/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr')

  raws.each do |raw|
    crypto_hash = {
      name: raw.xpath('td[2]/div/a').text,
      value: raw.xpath('td[5]/div/a').text
    }
    crypto_array << crypto_hash
  end
  puts crypto_array
end

scraping("https://coinmarketcap.com/all/views/all/")