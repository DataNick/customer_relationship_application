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
	end
	
	def menu
		puts "Greeting #{name}."
	end

	def name

	end
end
crm = CRM.new
puts crm.class
