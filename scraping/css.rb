require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://www.google.com/search?q=doughnuts"))
doc.css('h3.r > a.l').each do |node|
  puts node.text
end
