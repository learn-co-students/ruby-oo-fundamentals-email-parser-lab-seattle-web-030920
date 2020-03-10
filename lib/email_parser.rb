# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        result = @emails.split(/, | /)
        #result.split(",")
        result.uniq
    end
end
emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
test1 = EmailAddressParser.new(emails)
#binding.pry