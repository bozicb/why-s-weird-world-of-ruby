def wipe_mutterings_from( sentence )
  while sentence.include? '('
    open = sentence.index( '(' )
    close = sentence.index( ')', open )
    sentence[open..close] = '' if close
  end
end

what_he_said = "But, strangely (em-pithy-dah),
  I learned upon, played upon (pon-shoo) the 
  organs on my home (oth-rea) planet."
