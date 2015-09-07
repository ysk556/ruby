mon = {
  "Jan" => 1,
  "Feb" => 2,
  "Mar" => 3,
  "Apr" => 4,
  "May" => 5,
  "Jun" => 6,
  "Jul" => 7,
  "Aug" => 8,
  "Sep" => 9,
  "Oct" => 10,
  "Nov" => 11,
  "Dec" => 12,
}
puts mon['May']
puts mon['Oct']
puts mon.size
puts mon.length
mon.each_key do |key|
  puts key
end
mon.each_value do |val|
  puts val
end
mon.each_pair do |key,val|
  puts "#{key}=#{val}"
end
