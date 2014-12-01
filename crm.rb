require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, "sqlite3:database.sqlite3")

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
		puts "What contact do you wish to change?"
		id = gets.chomp.to_i
		@rolodex.find(id)
		puts "What part of contact do you wish to change?"
		change = gets.chomp.downcase
		@rolodex.modify_contact(change)
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
	end
		

	def delete_contact
		puts "Enter id number to be deleted:"
		id_delete = gets.chomp.to_i
		@rolodex.delete_contact(id_delete) # calling the method on the rolodex
		#instance or object, and passing the id number to be deleted.
		puts "Contact #{id_delete} deleted."
	end

end

crm = CRM.new("Bitmaker Labs CRM")
crm.main_menu


