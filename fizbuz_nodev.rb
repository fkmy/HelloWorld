#２の倍数でFizz３の倍数でBuzzを出力
#割り算なし
init = 0
max  = ARGV[0].to_i

#予め答えを生成
#最大値までの基準値の倍数を返す
def multiple_calc(multi, max)
  score_result = []
  score = multi

  while (max >= score)
    score_result.push(score)
    score += multi
  end
  return score_result
end

score_15 = multiple_calc(15, max)
score_5  = multiple_calc(5, max)
score_3  = multiple_calc(3, max)

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
