require "nokogiri"
require "open-uri"
require "kconv"

url = "http://b.hatena.ne.jp/"
charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end
doc = Nokogiri::HTML.parse(html,nil,charset)
p doc.title
doc.css(".entry-contents//h3//a").each do |e|
  p e.text
end
