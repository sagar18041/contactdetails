require './contact'

class ContactInput
	attr_accessor :contact

	def initialize

    @contact=Contact.new

	end
	
	def get_contact_name
		
		puts'Enter Name'
		@contact.name=gets().chomp!

	end

	def get_contact_email
		
		puts'Enter Email'
		@contact.email=gets().chomp!
		
	end

	def get_contact_number
		
		puts'enter mobile number'
		@contact.number=gets().chomp!

	end

end
contact_input=ContactInput.new
contact_input.get_contact_name
contact_input.get_contact_number
contact_input.get_contact_email
puts contact_input.contact.is_name_valid?
puts contact_input.contact.is_number_valid?
puts contact_input.contact.is_email_valid?