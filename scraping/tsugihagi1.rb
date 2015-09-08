require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))

link_nodes = doc.xpath('//a')

first_link = link_nodes.first
first_link_2 = link_nodes[0]

link_nodes.first == link_nodes[0]

link_nodes.each do |elem|
  p elem
end
