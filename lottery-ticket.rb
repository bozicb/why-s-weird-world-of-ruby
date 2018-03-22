class LotteryTicket
  NUMERIC_RANGE=1..25
  attr_reader :picks,:purchased
  def initialize(*picks)
    if picks.length!=3
      raise ArgumentError,"three numbers must be picked"
    elsif picks.uniq.length!=3
      raise ArgumentError,"the three picks must be different numbers"
    elsif picks.detect{|p| not NUMERIC_RANGE === p}
      raise ArgumentError,"the three picks must be numbers between 1 and 25"
    end
    @picks=picks
    @purchased=Time.now
  end
  def self.new_random
    new(rand(25)+1,rand(25)+1,rand(25)+1)
  rescue ArgumentError
    retry
  end
end

ticket=LotteryTicket.new(rand(25)+1,rand(25)+1,rand(25)+1)
p ticket.picks
p ticket.purchased
