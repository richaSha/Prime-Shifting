require('rspec')
require('prime_shifting')
require('pry')

describe('#prime_shifting') do
  it('return 2 if number user enter is 2') do
    prime_finder = PrimeNumber.new()
    expect(prime_finder.find_prime(2)).to(eq("2"))
  end

  it('return 3 if number user enter is 2,3') do
    prime_finder = PrimeNumber.new()
    expect(prime_finder.find_prime(3)).to(eq("2,3"))
  end

  it('return 9 if number user enter is 2,3,5,7') do
    prime_finder = PrimeNumber.new()
    expect(prime_finder.find_prime(9)).to(eq("2,3,5,7"))
  end

  it('return 100 if number user enter is 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97') do
    prime_finder = PrimeNumber.new()
    expect(prime_finder.find_prime(100)).to(eq("2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97"))
  end

end
