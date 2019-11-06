users = [
          { username: "user1", password: "password1"},
          { username: "user2", password: "password2"},
          { username: "user3", password: "password3"},
          { username: "user4", password: "password4"},
          { username: "user5", password: "password5"},
        ]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Incorrect credentials"
end


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

  authentication = auth_user(username, password, users)
  puts authentication

  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts +=1
end
