# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    attr_accessor :email_addresses

    # def email_addresses=(email_addresses)
    #     @email_addresses = email_addresses
    # end

    # def email_addresses
    #     @email_addresses
    # end

    def parse        
        #binding.pry();
        # if(@email_addresses.include?(", "))
        #     temp_string = @email_addresses.gsub(", ", ",")
        #     #binding.pry();
        # else (@email_addresses.include?(" "))
        #     temp_string = @email_addresses.gsub(" ", ",")        
        #     #binding.pry();
        # end
        # #binding.pry();
        temp_string = @email_addresses.gsub(", ",",")
        temp_string = temp_string.gsub(" ", ",")
        temp_string.split(",").uniq
    end
end