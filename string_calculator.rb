require 'pry'
class StringCalculator

  def self.add(input_string)
    unless input_string.empty?
      result  = 0

      delimiter = ","
      if input_string.start_with?("//")
        parts = input_string.split("\n")
        delimiter = parts[0].split('//').last
        input_string = parts[1]
      end
      input_string = input_string.gsub("\n", delimiter)
      array = input_string.split(delimiter).map(&:to_i)

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


puts StringCalculator.add("//;\n1;2")