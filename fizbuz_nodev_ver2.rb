#1から10000までの数字を順にカンマ区切りで出力するプログラムを作成する
#出力条件
#3の倍数のときは数字を出力せずに文字列Fizzを出力
#5の倍数のときは数字を出力せずに文字列Buzzを出力
#15の倍数のときは数字を出力せずに文字列FizzBuzzを出力
#
#追加制限
#剰余演算子は使用しない

#最大値まで第１引数の倍数を配列にして返すメソッド
def multiple_calc(multi, max)
  score_result = []
  work   = multi

  while (work <= max)
    score_result.push(work)
    work += multi
  end
  return score_result
end

#初期値設定
MIN = 1
MAX = 10000
MULTI_FIZZBUZZ = 15
MULTI_FIZZ  =  3
MULTI_BUZZ  =  5
arr = []

#予め倍数を格納した配列を作成
score_FB = multiple_calc(MULTI_FIZZBUZZ, MAX)
score_F  = multiple_calc(MULTI_FIZZ, MAX)
score_B  = multiple_calc(MULTI_BUZZ, MAX)

#配列への格納
(MIN..MAX).each do |number|
  if score_FB.include?(number)
    arr.push(:FizzBuzz)
  elsif score_F.include?(number)
    arr.push(:Fizz)
  elsif score_B.include?(number)
    arr.push(:Buzz)
  else
    arr.push(number)
  end
end

#出力
print arr.join(",")
