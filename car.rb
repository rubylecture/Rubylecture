# -*- coding: shift_jis -*-

module ArrayPack
	def arrayPack(deletenumber,*array)
	#配列を詰める回数
    num=4-deletenumber
	num.times do |i|
	            #配列を前に詰める
				array[i+deletenumber]=array[i+1+deletenumber]
    end
    return *array
  end
end

class Car
  include ArrayPack
  @@ElementCount=0
  def initialize()
    #配列初期化
    @CarName=Array.new(5)
    @Price=Array.new(5)
  end
  def AddCar(carName,price)
    #配列がいっぱいだった場合
    if @@ElementCount===5
      #先頭配列を消去
      DeleteCar(0)
      #配列に要素を追加
      @CarName[@@ElementCount]=carName
      @Price[@@ElementCount]=price
      #要素数を1足す
      @@ElementCount=@@ElementCount+1
    else
      @CarName[@@ElementCount]=carName
      @Price[@@ElementCount]=price
      @@ElementCount=@@ElementCount+1
    end
  end
  def DeleteCar(arrayNumber)
  	#入力した番号が存在する場合
    if(arrayNumber<@@ElementCount)
    #消去
    @CarName[arrayNumber]=""
    @Price[arrayNumber]=''
    #モジュールを呼ぶ
    *@CarName=arrayPack(arrayNumber,*@CarName)
    *@Price=arrayPack(arrayNumber,*@Price)
    #配列の要素数を1減らす
    @@ElementCount=@@ElementCount-1
  else
  end
  end
  def ShowCar()
    @@ElementCount.times do |i|
    print(i, " CarName:",@CarName[i]," Price:",@Price[i],"\n" )
    end
  end
end


car=Car.new()
flag=true
while flag
  num=0
  print('1:add 2:delete 3:show 4:finish' )
  num=gets.chomp.to_i
  case num
  when 1 then
    print 'carname='
    carname=gets.chomp
    print 'price='
    price=gets.chomp.to_i
    car.AddCar(carname,price)
  when 2 then
    car.ShowCar()
    print('deletenumber=')
    number=gets.chomp.to_i
    car.DeleteCar(number)
  when 3 then
    car.ShowCar()
  when 4 then
    flag=false
  else
  end
end
