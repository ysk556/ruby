require 'net/http'
require 'uri'

url = URI.parse("http://qiita.com/ktaro/items/772014a4f0d48905f3ef")
http = Net::HTTP.start(url.host,url.port)
doc = http.get(url.path)
puts doc.body
