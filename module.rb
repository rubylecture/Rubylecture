# -*- coding: shift_jis -*-

module SuuchiModule #モジュール
  def minValue(x, y)
    if x < y
      return x
    else
      return y
    end
  end

  def maxValue(x, y)
    if x > y
      return x
    else
      return y
    end
  end

  module_function :minValue #モジュール関数が使えるように設定する
  module_function :maxValue
end

class Test
  include SuuchiModule #モジュールをインクルードする

  def dispValue(x, y)
    min = minValue(x, y)
    print("2つの値", x, "と", y, "の中で小さい値は", min, "です\n")
  end
end

include SuuchiModule # インクルードすることでモジュール名を省略して関数を使える
print(minValue(10, 8), "\n")
print(maxValue(10, 8), "\n")

test = Test.new
test.dispValue(10, 8)