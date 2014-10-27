require_relative './contact.rb'
require_relative './rolodex.rb'

class CRM
	attr_accessor :name
	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
	end

	def print_menu
		puts "[1] Add"
		puts "[2] Modify"
		puts "[3] Display All"
		puts "[4] Display Contact"
		puts "[5] Display Attribute"
		puts "[6] Delete"
		puts "[7] Exit"
		puts "Enter a number: "
	end

	def main_menu
		puts "Welcome to #{@name}!" #this variable lives within class
		while true
		  print_menu #this calls the print_menu method
		  input = gets.chomp.to_i  #user selects the item from menu; call
									#-the-option is passed the user's selection and selects the item from the menu
		  return if input == 7
		  choose_option(input)
		end
	end
		
	def choose_option(option)
		case option # this is a reference to choose_option parameter.
			#these were words but changed to numbers for ease of implementation
		when 1 then add_contact # pointing to other methods
		when 2 then modify_contact
		when 3 then display_all
		when 4 then display_all_contacts
		when 5 then display_attr
		when 6 then delete_contact
		else
			puts "Please make a selection"
			return
		end
	end

	def add_contact
		print "First Name:"
		first_name = gets.chomp
		print "Last Name:"
		last_name = gets.chomp
		print "Email:"
		email = gets.chomp
		print "Note:"
		note = gets.chomp

		contact = Contact.new(first_name, last_name, email, note)
		@rolodex.add_contact(contact)
	end

	def modify_contact
		puts "Enter id number:"
		id_delete = gets.chomp.to_i
		@rolodex.delete_contact(id_delete)
		puts "Contact #{id_delete} deleted."
	end

	def display_all
		@rolodex.contacts.each do |contact|
			puts "#{contact.first_name} #{contact.last_name}, #{contact.id}"
		end
	end

	def display_all_contacts
		@rolodex.contacts.each do |contact|
			puts "#{contact.first_name} #{contact.last_name} <#{contact.email}>"
	end

	def display_attr
		
	end

	def delete_contact
		
	end

end

crm = CRM.new("Bitmaker Labs CRM")
crm.main_menu

# puts crm.class
# puts crm
# crm.modify

