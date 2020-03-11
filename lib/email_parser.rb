# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
	def initialize(addresses)
		@addresses = addresses
	end

	def parse
            parsed_array = @addresses.split(/, *|\s/)
            output = []
            parsed_array.each do |address|
                if !output.include?(address) 
                    output.push(address)
                end
            end
        output
	end
end