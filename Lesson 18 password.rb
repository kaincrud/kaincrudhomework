def is_password_weak? password
input = File.open(__dir__ + "\\lesson18password.txt", "r")

while (line = input.gets)
  line.strip!

  if password.include? line
    return true
  end
end

  return false
end

  print "Enter your password: "
  password = gets.strip

  if is_password_weak? password
    puts "Your password is weak"
  else
    puts "Your password is not weak"
  end
