require_relative '../config/environment'

require 'pry'

# require_relative "../lib/api_communicator.rb"
# require_relative "../lib/cli.rb"

welcome
user = name_prompt

loop do
  ho = home(user)
  home(user)
# binding.pry
  if ho == "delete"
    break
  end
  #binding.pry
end
#home(user)






# home(user)
# interest_prompt(user)
# view_cause(user)
# delete_user(user) # => how does this go back to name_prompt? if they press Y
#and how to make go to a "home" screen wiht options




#how to make run methods loop around?
#how to exit
