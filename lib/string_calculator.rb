class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    nums = if numbers.start_with?('//')
      delimiter = numbers[2]
      numbers.split('\n')[1].split(delimiter)
    else
      numbers.gsub('\n', ',').split(',')
    end
    nums.map!(&:to_i)
    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.first}" if negatives.any?
    nums.sum
  end
end

