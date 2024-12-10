class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.index(',').nil? && numbers.index('\n').nil?

    if numbers.start_with?('//')
      delimiter = numbers[2]
      numbers = numbers.split('\n')[1]
      numbers.split(delimiter).map(&:to_i).sum
    else
      numbers.gsub('\n', ',').split(',').map(&:to_i).sum
    end
  end
end
