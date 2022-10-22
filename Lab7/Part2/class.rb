# frozen_string_literal: true

# class default Line
class Line
  def initialize(fir_p_x, fir_p_y, sec_p_x, sec_p_y)
    @first_point = [fir_p_x, fir_p_y]
    @second_point = [sec_p_x, sec_p_y]
  end

  def print
    puts "first_point = #{@first_point}"
    puts "second_point = #{@second_point}"
  end

  def three_point?(thir_p_x, thir_p_y)
    if ((thir_p_x - @first_point[0]) * (@second_point[1] - @first_point[1]) -
      (@second_point[0] - @first_point[0]) * (thir_p_y - @first_point[1])).zero?
      'Yes'
    else
      'No'
    end
  end
end

# class fatLine
class FatLine < Line
  def initialize(fir_p_x, fir_p_y, sec_p_x, sec_p_y, fat_param)
    super(fir_p_x, fir_p_y, sec_p_x, sec_p_y)
    @fat = fat_param
  end

  def print
    puts "first_point = #{@first_point}"
    puts "second_point = #{@second_point}"
    puts "fat of line = #{@fat}"
  end

  def three_point?(thir_p_x, thir_p_y)
    k = vec_k_calc(thir_p_x, thir_p_y)
    if vec_normal_calc(k, thir_p_x, thir_p_y) <= (@fat**2) / 4
      'Yes'
    else
      'No'
    end
  end

  def vec_k_calc(thir_p_x, thir_p_y)
    (thir_p_x - @first_point[0]) * (@second_point[0] - @first_point[0]) +
      (thir_p_y - @first_point[1]) * (@second_point[1] - @first_point[1])
  end

  def vec_normal_calc(k_val, thir_p_x, thir_p_y)
    (k_val * (@second_point[0] - @first_point[0]) - thir_p_x + @first_point[0])**2 +
      (k_val * (@second_point[1] - @first_point[1]) - thir_p_y + @first_point[1])**2
  end
end
