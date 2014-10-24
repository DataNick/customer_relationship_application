class CRM

	def initialize(name)
		@name = name
	end

	def print_menu
		puts "Add"
		puts "Modify"
		puts "Display All"
		puts "Display Contact"
		puts "Display Attribute"
		puts "Delete"
		puts "Exit"
	end

	def add
		puts "What is your first name?"
		first_name = gets.chomp
		puts "What is your last name?"
		last_name = gets.chomp
		puts "What is your email?"
		email = gets.chomp
		puts "Please leave a note."
		notes = gets.chomp
	end

	def modify
		puts "Please give a contact number."
		contact_num = gets.chomp
		if gets.chomp == "Y" or gets.chomp == "y"
			puts "Yes"
		elsif
			gets.chomp == "N" or gets.chomp == "n"
			puts "No"
		else
			puts "Please answer yes or no."
		end
	end

	def menu
		puts "Greeting #{name}."
	end

	def name

	end
end
crm = CRM.new("nick")
puts crm.class
puts crm
