require 'rubygems'
require 'pry'
require './validate_nil'
class Contact
 attr_accessor :name,:number,:email
 include ValidateNil
 def is_name_valid?
 		present?(@name) && (@name.match(/^[a-zA-Z \s]*$/)) ? true : false
 end 

 def is_email_valid?
 	present?(@email) && (@email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/)) ? true :false
 end

 def is_number_valid?
 	present?(@number) && (@number.match(/^[0-9]/)) && (@number.length==10) ? true : false
 end
 
 def is_validate?
 	is_name_valid? && is_email_valid? && is_number_valid?
 end
 def check
 	puts present?(@name)
 end

end
#contact=Contact.new
#contact.name='sagatat'
#contact.email='sssss@gmil.com.com'
#a.phno="222222222a"
#contact.check
#binding.pry