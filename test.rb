# Basic calculator that can add, subtract, multiply and divide, square root
#split all those up into diff methods and call those methods again

def calculator
	puts "basic or advanced math? (write basic or advanced)"
	type=gets.chomp.downcase
		if type=="basic" 
			puts "what would you like to do? (please write 'add', 'subtract', 'multiply', or 'divide')?"
			function=gets.chomp 
		elsif type=="advanced"
			puts "what would you like to do? (please write'exponent', or 'square root')"
			function=gets.chomp
		else 
			puts "please write basic or advanced"
			calculator
		end
	case function.downcase	
	when "add" 
		puts "what is the first number you would like to add?"
			first_num = gets.chomp.to_i
		puts "what is the second number you would like to add?"
			second_num = gets.chomp.to_i
		answer = first_num + second_num
		puts answer
	when "subtract"
		puts "What number are you subtracting from?"
			first_num = gets.chomp.to_i
		puts "What do you want to subtract from that number?"
			second_num = gets.chomp.to_i
		answer = first_num - second_num
		puts answer
	when "multiply"
		puts "What is the first number?"
			first_num = gets.chomp.to_i
		puts "What is the second number?"
			second_num = gets.chomp.to_i
		answer = first_num * second_num
		puts answer 
	when "divide"
		puts "What is the first number?"
			first_num = gets.chomp.to_i
		puts "What is the second number?"
			second_num = gets.chomp.to_i
		answer = first_num / second_num
		puts answer 
	when "square root"
		puts "What is the number?"
			first_num = gets.chomp.to_i
		answer = Math.sqrt(first_num)
		puts answer 
	when "exponent"
		puts "What number?"
			first_num = gets.chomp.to_i
		puts "What number would you like to raise it to?"
			second_num = gets.chomp.to_i
		answer= first_num ** second_num
		puts answer
	end
	puts "would you like to make another calculation? (yes or no)"
		answer = gets.chomp.downcase
		if answer == "yes"
			calculator
		else 
				puts "Goodbye!" 
		end
end