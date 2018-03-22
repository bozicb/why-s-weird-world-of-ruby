require 'endertromb'
module WishScanner
  def scan_for_a_wish
    wish=self.read.detect do |thought|
      thought.index('wish: ')==0
    end
    wish.gsub('wish: ','')
  end
end
