require 'open-uri'
open("http://blog.livedoor.jp/gibson1798/archives/51812671.html") do |f|
  f.each_line do |line|
    p line
  end
end
