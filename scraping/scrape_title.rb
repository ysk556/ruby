require 'open-uri'
require 'nokogiri'

# スクレイピングするURL
url = 'http://www.yahoo.co.jp/'

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

# タイトルを表示
p doc.title

nodesets = doc.xpath('//title')
p nodesets.text
p nodesets.inner_text
p nodesets.first.inner_text

nodesets.each do |nodeset|
  p nodeset.content()
  p nodeset.text
  p nodeset.inner_text
end
