require 'rubygems'
class Validation
	attr_accessor :name,:email,:phno
	@error
	def text
		puts  "Enter your name"
		@name=gets().chomp!
		if @name=="" || @name.match(/^[a-zA-Z\s]*$/).to_s=="" || @name.length>50
				puts "Wrong name"
				@error+="Wrong name"
		 		text
		end
	end

	def num
		puts  "Enter your Mobile number"
		@phno=gets().chomp!
		if @phno=="" || @phno.match(/^[0-9+]*$/).to_s=="" || @phno.to_s.length <10 || @phno.to_s.length>14
		 	puts "Wrong number"
		 	@error+="Wrong number"
		 	num
	  end 	
   end
	def emil
		puts  "Enter your email"
	 	@email=gets().chomp!
		if @email=="" || (@email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/)).to_s==""
		 	puts "Wrong Email"
		 	@error+="Wrong Email"
		 	emil
	  end
	 end 
	 def display
     puts "Name=>" +@name
     puts "Email=>" +@email
     puts "Mobile number" +@phno
	 end 
end	
a=Validation.new
a.text()
a.emil()
a.num()
a.display()
