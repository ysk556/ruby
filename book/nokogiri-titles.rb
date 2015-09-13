require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))

puts doc%'//title'
puts doc/'//title'
puts doc.at('//title')

puts doc.at_xpath('//title')
