# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        list_1 = @email_addresses.split(",")
        list_2 = list_1.map{|line| line.split(" ")}
        list_2.flatten.uniq()
    end

end
