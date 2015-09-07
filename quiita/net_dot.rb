require 'net/http'
require 'uri'

url = URI.parse("http://blog.livedoor.jp/gibson1798/")
http = Net.HTTP.start(url.host,url.port)
doc = http.get(url.path)
puts doc.body
