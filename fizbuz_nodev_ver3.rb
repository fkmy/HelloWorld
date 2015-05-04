#1から10000までの数字を順にカンマ区切りで出力するプログラムを作成する
#出力条件
#3の倍数のときは数字を出力せずに文字列Fizzを出力
#5の倍数のときは数字を出力せずに文字列Buzzを出力
#15の倍数のときは数字を出力せずに文字列FizzBuzzを出力
#
#追加制限
#剰余演算子は使用しない

#初期値設定
MIN = 1
MAX = 10000
MULTI_FIZZ  =  3
MULTI_BUZZ  =  5
arr = []

fizz_cnt = MULTI_FIZZ
buzz_cnt = MULTI_BUZZ

#配列への格納
(MIN..MAX).each do |number|
  fizz_cnt -= 1
  buzz_cnt -= 1
  str = ""
  if fizz_cnt == 0
    fizz_cnt = MULTI_FIZZ
    str += "FIZZ"
  end

  if buzz_cnt == 0
    buzz_cnt = MULTI_BUZZ
    str += "BUZZ"
  end

  if str == ""
    str = number
  end

  arr.push(str)
end

#出力
print arr.join(",")
