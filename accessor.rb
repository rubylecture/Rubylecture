# -*- coding: shift_jis -*-
class Car
  attr_accessor:name #�ϐ��̒l�̓ǂݎ��E�����������s��
  attr_reader:price #�ϐ��̒l�̓ǂݎ�肾�����s��
  
  def initialize(carname,price)
    @name = carname 
    @price = price
  end

  def dispName #���\�b�h
    puts("name:#{@name},price:#{@price}")
  end
end

car = Car.new("crown",100)
car.dispName
car.name="lexus"
#car.price=80 
car.dispName

