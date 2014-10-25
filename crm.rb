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

	def main_menu
		print_menu #this calls the print_menu method
		user_option = gets.to_i 
		#user selects the item from menu; call
		#-the-option is passed the user's selection and selects the item from the menu
		call_the_option(user_option)
	end

	def call_the_option

	end
		
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
		if (contact_num == "Y" || contact_num== "y")
			puts "Yes"
		elsif (contact_num == "N" || contact_num == "n")
			puts "No"
		else
			puts "Please answer yes or no."
		end
	end

	def choose_option(option)
		puts "Please make a selection."
		case choose_option
			#these were words but changed to numbers for ease of implementation
		when 1 then add_contact # pointing to other methods
		when 2 then modify_contact
		when 3 then display_all
		when 4 then display_contact
		when 5 then display_attr
		when 6 then delete_contact
		else
			puts "Please make a selection."
			return
		end
	end

	def name

	end
end
crm = CRM.new("nick")
puts crm.class
puts crm
crm.modify

