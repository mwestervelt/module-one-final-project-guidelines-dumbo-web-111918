require_relative '../config/environment'

require 'pry'

# require_relative "../lib/api_communicator.rb"
# require_relative "../lib/cli.rb"

system "clear"
welcome
user = name_prompt


loop do
  ho = home(user)
  if ho == "Find a charity"
   view_cause(user)
  elsif ho == "Choose new cause"
    interest_prompt(user)
  elsif ho == "Delete profile"
    k = delete_user(user)
    if k == "d"
    user = name_prompt
    end
  elsif ho == "Exit"
    system "clear"
    puts "Bye bye!"
    break
  end

end
#home(user)






# home(user)
# interest_prompt(user)
# view_cause(user)
# delete_user(user) # => how does this go back to name_prompt? if they press Y
#and how to make go to a "home" screen wiht options




#how to make run methods loop around?
#how to exit
