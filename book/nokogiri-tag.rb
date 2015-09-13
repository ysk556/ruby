require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp'))
title = doc.xpath('/html/head/title')
title = doc.css('title').text
objects = doc.xpath('//a').text

puts title
puts objects
