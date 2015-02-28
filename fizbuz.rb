#２の倍数でFizz３の倍数でBuzzを出力
init = 0
max  = ARGV[0].to_i + 1

max.times do |i|
	if i % 15 == 0
		puts "#{i}：FizzBuzz"
	elsif i % 3 == 0 
		puts "#{i}：Fizz"
	elsif i % 5 == 0
		puts "#{i}：Buzz"
	else
		puts "#{i}："
	end
end
