# -*- coding: shift_jis -*-

class Tax
    @@zeiritsu = 0.08 #�N���X�ϐ�
    def self.zeiritsu= (n)
        @@zeiritsu = n
    end
    def self.priceWithTax(price)
        return (price * (1.0 + @@zeiritsu)).to_i
    end
    def self.tax(price)
        return (price * @@zeiritsu).to_i
    end
end
 
price = 12300
puts("���i�F" + price.to_s)
puts("�ō��F" + Tax.priceWithTax(price).to_s)
puts("�Ŋz�F" + Tax.tax(price).to_s)
Tax.zeiritsu = 0.1
puts("������ł�10%�ɂ�����Ɓc�c")
puts("�ō��F" + Tax.priceWithTax(price).to_s)
puts("�Ŋz�F" + Tax.tax(price).to_s)