# -*- coding: shift_jis -*-

module ArrayPack
	def arrayPack(deletenumber,*array)
	#�z����l�߂��
    num=4-deletenumber
	num.times do |i|
	            #�z���O�ɋl�߂�
				array[i+deletenumber]=array[i+1+deletenumber]
    end
    return *array
  end
end

class Car
  include ArrayPack
  @@ElementCount=0
  def initialize()
    #�z�񏉊���
    @CarName=Array.new(5)
    @Price=Array.new(5)
  end
  def AddCar(carName,price)
    #�z�񂪂����ς��������ꍇ
    if @@ElementCount===5
      #�擪�z�������
      DeleteCar(0)
      #�z��ɗv�f��ǉ�
      @CarName[@@ElementCount]=carName
      @Price[@@ElementCount]=price
      #�v�f����1����
      @@ElementCount=@@ElementCount+1
    else
      @CarName[@@ElementCount]=carName
      @Price[@@ElementCount]=price
      @@ElementCount=@@ElementCount+1
    end
  end
  def DeleteCar(arrayNumber)
  	#���͂����ԍ������݂���ꍇ
    if(arrayNumber<@@ElementCount)
    #����
    @CarName[arrayNumber]=""
    @Price[arrayNumber]=''
    #���W���[�����Ă�
    *@CarName=arrayPack(arrayNumber,*@CarName)
    *@Price=arrayPack(arrayNumber,*@Price)
    #�z��̗v�f����1���炷
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
