users = [
          { username: "Yamin", password: "password1" },
          { username: "Delsin", password: "password2" },
          { username: "Mannny", password: "password3" },
          { username: "Angus", password: "password4" },
          { username: "Steven", password: "password5" }
        ]

     
       def checkUsernamePassword(username, password , arrz)
          arrz.each do | info | #loops through the passed in array 
            if info[:username] == username && info[:password]  #checks  to see if username in array is equal to entered username and matching password 
              return info
            else
              return "Information not correct" #if enered information is not correct 
            end 
          end
        end 


      puts "Welcome to the Authenticator, this program will take input from the user and compare password"
      30.times{print "-"}
      puts
 


      attempts=1
      while attempts < 4
        print "Enter Username "
        username= gets.chomp
        print "Enter Password "
        password = gets.chomp
        check= checkUsernamePassword(username,password,users) #runs the method to check if entered informatio matches array 
        puts check 
        puts "Type n to quit or any other key to continue"
        input = gets.chomp.downcase
        break if input == "n"
        attempts += 1  
      end
      if attempts==4 #you can only have 4 attempts 
        puts "You have exceeded the number of attempts"
      end



      

  
      


      
