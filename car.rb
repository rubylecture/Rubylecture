# -*- coding: shift_jis -*-

module ArrayPack
	def arrayPack(deletenumber,*array)



    return *array
  end
end

class Car
  include ArrayPack
  @@ElementCount=0
  def initialize()
    @CarName=Array.new(5)
    @Price=Array.new(5)
  end
  def AddCar(carName,price)
    if @@ElementCount===5
      



    else



    end
  end
  def DeleteCar(arrayNumber)
    if(arrayNumber<@@ElementCount)



  else
  end
  end
  def ShowCar()

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
