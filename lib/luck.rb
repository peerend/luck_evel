def lucky_number(ticket)
  
  ticket_array = ticket.to_s.split('') #Split the ticket into an array
  ticket_array = user_ticket_array.map { |i| i.to_i } #converts elements to integer
  
  ticket_length = ticket_array.length
  bottom_length = (ticket_length/2.0).floor #split the array into bottom and top
  top_length = (ticket_length/2.0).ceil

  ticket_btm = ticket_array.slice(0..bottom_length-1) #create two arrays for each half of the ticket
  ticket_top = ticket_array.slice(top_length..ticket_length )
  
  ticket_btm_sum = ticket_btm.inject{|sum,x| sum + x } #take sum of halves
  ticket_top_sum = ticket_top.inject{|sum,x| sum + x }

#Check whether sides are equal
  if ticket_btm_sum == ticket_top_sum
     "Lucky Ticket"
  else
     "Not a lucky ticket"
  end
end