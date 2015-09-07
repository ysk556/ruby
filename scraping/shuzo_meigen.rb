require 'open-uri'
require 'nokogiri'

url = 'http://curazy.com/archives/6493'

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end

page = Nokogiri::HTML.parse(html, nil, charset)
shuzo_meigen = page.search('p')
p shuzo_meigen.text
