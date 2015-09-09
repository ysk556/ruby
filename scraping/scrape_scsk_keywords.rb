require 'open-uri'
require 'nokogiri'

url = "http://www.scsk.jp"

charset = nil
html = URI.parse(url).read
charset = html.charset
if charset == 'iso-8859-1'
  charset = html.scan(/charset="?([^\s"]*)/i).first.join
end

doc = Nokogiri::HTML(html, nil, charset)
p doc.title
p charset
