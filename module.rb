# -*- coding: shift_jis -*-

module SuuchiModule #���W���[��
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

  module_function :minValue #���W���[���֐����g����悤�ɐݒ肷��
  module_function :maxValue
end

class Test
  include SuuchiModule #���W���[�����C���N���[�h����

  def dispValue(x, y)
    min = minValue(x, y)
    print("2�̒l", x, "��", y, "�̒��ŏ������l��", min, "�ł�\n")
  end
end

include SuuchiModule # �C���N���[�h���邱�ƂŃ��W���[�������ȗ����Ċ֐����g����
print(minValue(10, 8), "\n")
print(maxValue(10, 8), "\n")

test = Test.new
test.dispValue(10, 8)