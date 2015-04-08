#２の倍数でFizz３の倍数でBuzzを出力
#割り算なし
init = 0
max  = ARGV[0].to_i

#予め答えを生成
#3の倍数を格納
def multiple_3(max)
  score_result = []
  score = 3

  while (max >= score)
    score_result.push(score)
    score += 3
  end
  return score_result
end

#5の倍数を格納
def multiple_5(max)
  score_result = []
  score = 5
  while (max >= score)
    score_result.push(score)
    score += 5
  end
  return score_result
end

#15の倍数を格納
def multiple_15(max)
  score_result = []
  score = 15

  while (max >= score)
    score_result.push(score)
    score += 15
  end
  return score_result
end

score_15 = multiple_15(max)
score_5  = multiple_5(max)
score_3  = multiple_3(max)

max +=1
max.times do |numbers|
  if score_15.find {|item| item == numbers }
    puts "#{numbers}：FizzBuzz"
  elsif score_5.find {|item| item == numbers }
		puts "#{numbers}：Fizz"
  elsif score_3.find {|item| item == numbers }
    puts "#{numbers}：Buzz"
  else
		puts "#{numbers}："
  end
end
