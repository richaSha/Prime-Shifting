class PrimeNumber
  def find_prime(num)
    start_count = 2
    number_range = (start_count..num).to_a
    while num > start_count
      number_range.each do |number|
        if (number % start_count == 0) & (start_count != number) & (number_range.include?(number))
          number_range.delete(number)
        end
      end
      start_count += 1
    end
    number_range.join(",")
  end
end
