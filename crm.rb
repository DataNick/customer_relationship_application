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
		if (contact_num == "Y" || contact_num== "y")
			puts "Yes"
		elsif (contact_num == "N" || contact_num == "n")
			puts "No"
		else
			puts "Please answer yes or no."
		end
	end

	def choose_option
		puts "Please make a selection."
		case choose_option
		when "Add" then add_contact
		when "Modify" then modify_contact
		when "Display all" then display_all
		when "Display contact" then display_contact
		when "Display attribute" then display_attr
		when "Delete" then delete_contact
		end

	def name

	end
end
crm = CRM.new("nick")
puts crm.class
puts crm
crm.modify

