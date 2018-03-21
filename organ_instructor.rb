def wipe_mutterings_from( sentence )
  unless sentence.respond_to? :include?
    raise ArgumentError,
          "cannot wipe mutterings  from a #{sentence.class}"
  end
  sentence = sentence.dup
  while sentence.include? '('
    open = sentence.index( '(' )
    close = sentence.index( ')', open )
    sentence[open..close] = '' if close
  end
  sentence
  # better alternative: sentence.gsub(/\([-\w]+\)/,'')
end

what_he_said = "But, strangely (em-pithy-dah),
  I learned upon, played upon (pon-shoo) the 
  organs on my home (oth-rea) planet."

str = "A string is a long shelf of letters and spaces."
puts str[0]       # prints 'A'
puts str[0..-1]   # prints 'A string is a long shelf of letters and spaces.'
puts str[1..-2]   # prints ' string is a long shelf of letters and spaces'
puts str[0, 3]    # prints 'A s'
puts str['shelf'] # prints 'shelf'
