require 'pry'
class StringCalculator

  def self.add(input_string)
    unless input_string.empty?
      result  = 0
      array = input_string.gsub("\n",",").split(",")
      num_arry = array.map(&:to_i)
      num_arry.each do |num|
        result+=num
      end
      result
    else
      return 0
    end
  end

end


puts StringCalculator.add("1\n,2")