class Gigasecond
  def initialize(start)
    @start = start.to_time
  end

  def date
    (start + (10 ** 9)).to_date
  end
end
