m = gets
n = gets.chomp.to_i

puts "m:#{m}  n:#{n}"

n.times do |i|
  num = gets.chomp.split(" ")
  puts "#{num[0]} #{num[1]}"
end
