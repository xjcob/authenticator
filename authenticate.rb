users = [
          { username: "user1", password: "password1"},
          { username: "user2", password: "password2"},
          { username: "user3", password: "password3"},
          { username: "user4", password: "password4"},
          { username: "user5", password: "password5"},
        ]

puts "Welcome to the authenticator"
50.times {print "-"}
puts
puts "This program will take input from user and compare the password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  users.each do |user|
    if user[:username] == username && user[:password] == password
      puts user
      break
    else
      puts "Incorrect credentials"
    end
  end

  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts +=1
end
