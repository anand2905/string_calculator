class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.index(',').nil? && numbers.index('\n').nil?
    
    numbers.gsub("\n", ",").split(',').map(&:to_i).sum
  end
end
