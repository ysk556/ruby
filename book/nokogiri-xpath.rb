require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.yahoo.co.jp/'))

puts doc.xpath("/html/head/title")

puts doc.xpath("//title")

puts doc.xpath("//ul[@id='servicelist']/li[3]")

puts doc.xpath("//h2[@class='title']")
