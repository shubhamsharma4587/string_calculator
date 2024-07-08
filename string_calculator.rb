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

      negetive_num = []
      num_arry.each do |num|
        negetive_num << num if num < -1
        result+=num
      end
      raise "negative numbers not allowed #{negetive_num.join(',')}" if negetive_num.length > 0

      result
    else
      return 0
    end
  end

end


