# -*- coding: shift_jis -*-
class Car
  attr_accessor:name #変数の値の読み取り・書き換えを行う
  attr_reader:price #変数の値の読み取りだけを行う
  
  def initialize(carname,price)
    @name = carname 
    @price = price
  end

  def dispName #メソッド
    puts("name:#{@name},price:#{@price}")
  end
end

car = Car.new("crown",100)
car.dispName
car.name="lexus"
#car.price=80 
car.dispName

