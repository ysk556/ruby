require 'open-uri'
require 'nokogiri'

url = 'http://eiga.com/movie/55975/'
charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end
doc = Nokogiri::HTML.parse(html,nil,charset)
p doc.title
doc.xpath('//div[@class="moveInfoBox"]').each do |node|
  # title
  p node.xpath('h1').text

  # released_at
  p node.xpath('span[@class="opn_date"]/strong').text

  # released_at (yyyy-mm-dd)
  p node.xpath('span[@class="opn_date"]/strong').attribute("content").value

  # image_url
  p node.xpath('//div[@class="pictBox"]/a/img[@class="main"]').attribute("src").value

  # thumbs
  thumbs = node.xpath('//p[@class="thumBox"]/a')
  p thumbs.size
  thumbs.each do |thumb|
    p thumb.xpath('img').attribute('src').value
  end

  # description
  p node.xpath('div[@class="outline"]/p').text

  # staff
  staffs = node.xpath('div[@class="staffcast"]/div[@class="staffBox"]/dl/dd/a')
  staffs.each do |staff|
    p staff.text
  end

  # casts
  casts = node.xpath('div[@class="staffcast"]/div[@class="castBox"]/ul/li/span/a')
  casts.each do |cast|
    p cast.text
  end
end
