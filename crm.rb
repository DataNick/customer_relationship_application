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

	def name

	end
end
crm = CRM.new
puts crm.class
