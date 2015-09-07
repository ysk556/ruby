require "open-uri"
require "nokogiri"

url = "http://qiita.com/riocampos/items/72b86103aa08532a5b30"
charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end
doc = Nokogiri::HTML.parse(html,nil,charset)
p doc.title
