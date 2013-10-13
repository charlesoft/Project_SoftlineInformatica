class EmailSinglevalidator < ActiveModel::EachValidator

	def validate_each (record, attribute, value)
		redord.errors[attribute] << (options[:message] || "is not an email")
		unless  value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
			
		end
	end