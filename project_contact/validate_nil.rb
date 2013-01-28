module ValidateNil
	def is_nil(value)
		value.nil? || value.length==0
	end
	def present(value)
		!is_nil(value)
	end
end