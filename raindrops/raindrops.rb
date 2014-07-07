require 'pry'
class Raindrops

  CONVERSION = [[3, 'Pling'], [5, 'Plang'], [7, 'Plong']]

  def self.convert(number)
    return '1' if number == 1

    out = primes(number).map { |num| picker(num) }.uniq.join

    return number.to_s if out.empty?

    out
  end

  private

  def self.picker(number)
    CONVERSION.select { |num, translation| number == num }.flatten[1]
  end

  def self.primes(n)
    return [] if n == 1
    factor = (2..n).detect {|x| n % x == 0}
    [factor] + primes(n / factor)
  end
end
