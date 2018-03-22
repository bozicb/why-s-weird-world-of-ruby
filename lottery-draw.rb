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

class << LotteryDraw
  def play
    final=LotteryTicket.new_random
    winners={}
    @@tickets.each do |buyer,ticket_list|
      ticket_list.each do |ticket|
        score=ticket.score(final)
        next if score.zero?
        winners[buyer]||=[]
        winners[buyer]<<[ticket,score]
      end
    end
    @@tickets.clear
    winners
  end
end

LotteryDraw.play.each do |winner,tickets|
  puts winner+'won on '+tickets.length+' ticket(s)!'
  tickets.each do |ticket,score|
    puts "\t"+ticket.picks.join(', ')+": "+score
  end
end
