class LotteryDraw
  @@tickets={}
  def LotteryDraw.buy(customer,*tickets)
    unless @@tickets.has_key?(customer)
      @@tickets[customer]=[]
    end
    @@tickets[customer]+=tickets
  end
end

LotteryDraw.buy 'Yal-dal-rip-sip',
                LotteryTicket.new(12,6,19),
                LotteryTicket.new(5,1,3),
                LotteryTicket.new(24,6,8)


