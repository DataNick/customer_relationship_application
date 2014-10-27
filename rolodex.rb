class Rolodex
	attr_reader :contacts
	@@index = 1000 #1006 for 2 rolodexes.
	def initialize
		@contacts = []
		#@index = 1000 #1003 for 2 rolodexes with 3 contacts.
	end

	def add_contact(contact)
		contact.id = @@index
		@@index += 1
		@contacts << contact
	end
end