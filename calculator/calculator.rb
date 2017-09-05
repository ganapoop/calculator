def get_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Would you like to [add],[subtract], [multiply], [divide] or [quit]?"
response = gets.chomp

case response.downcase
when 'add'
  puts "Which numbers would you like to add?"
  operator = :+

when 'subtract'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'multiply'
  puts "Which numbers would you like to multiply?"
  operator = :*

when 'divide'
  puts "Which numbers would you like to divide?"
  operator = :/

when 'quit'
  puts "Bye!"
end

answer = get_int_values.inject(operator)
puts "The answer is...#{ answer }"
