blue_crystal = 1
leaf_tender = 5

pipe.catch_a_star

captive_star = pipe.catch_a_star

starmonkey = ratchet.attach(captive_monkey,captive_star)
starmonkey = ratchet.attach(captive_monkey,pipe.catch_a_star)+deco_hand_frog

plastic_cup = nil

if plastic_cup
  print "Platic cup is on the up 'n' up!"
end

unless plastic_cup
  print "Plastic cup is on the down low."
end

print "Yeah, plastic cup is up again!" if plastic_cup
print "Hardly. It's down." unless plastic_cup

print "We're using plastic 'cause we don't \
have a glass." if plastic_cup unless glass_cup

approaching_guy = true

if approaching_guy == true
  print "That necklace is classic."
end

if approaching_guy == false
  prnt "Get in here, you conniving devil."
end

at_hotel = true
email = if at_hotel
          "bojax@hotelambrose.com"
        else
          "bojax@dr_b.com"
        end

email = if at_hotel
          address = "bojax"
          address << "@hotelambrose"
          address << ".com"
        end

print(if at_hotel.nil?
      "No clue if he's in the hotel."
     elsif at_hotel == true
       "Definitely in."
     elsif at_hotel == false
       "He's out."
     else
       "The system is on the freee-itz."
      end)

print "Type and be diabolical: "
idea_backwards = gets.reverse

idea_backwards = gets.upcase.reverse

kitty_toys =
  [:shape=>'sock',:fabric=>'cashmere']+
  [:shape=>'mouse',:fabric=>'calico']+
  [:shape=>'eggroll',:fabric=>'chenille']
kitty_toys.sort_by {|toy| toy[:fabric]}

kitty_toys = [
  {:shape => 'sock', :fabric => 'cashmere'},
  {:shape => 'mouse', :fabric => 'calico'},
  {:shape => 'eggroll', :fabric => 'chenille'}
]

kitty_toys.sort_by {|toy| toy[:shape]}.each do |toy|
  puts "Blixy as a #{toy[:shape]} made of #{toy[:fabric]}"
end

non_eggroll = 0
kitty_toys.each do |toy|
  next if toy[:shape] == 'eggroll'
  non_eggroll = non_eggroll+1
end

kitty_toys.each do |toy|
  break if toy[:fabric] == 'chenille'
  p toy
end
