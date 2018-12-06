require'pry'


def welcome
  puts "Welcome to CharityMatch!"
  sleep 2
end

def name_prompt
  system "clear"
  prompt = TTY::Prompt.new
  puts "What is your username?"
  name = prompt.ask('>')
  name = User.create(name: "#{name}")

end

def interest_prompt(user)
  system "clear"
  prompt = TTY::Prompt.new
  choices = Cause.all.collect {|c| {"#{c.name}" => c}}
  interest = prompt.select('Choose your area of interest', choices, per_page: 13)
  UserCause.create(user: user, cause: interest)
  puts "You have chosen to support #{interest.name}!"
  # puts "You might be interested in supporting #{cause.charity}"
  # puts "#{cause.mission}"
    #what next - go home?
end

# def users_id(name)
#   User.find_by(name: name).id
# end

def view_cause(user)
  if user.causes.size == 0
    puts "You haven't chosen a cause to support yet!"
     #return them to home
  elsif user.causes.size > 0
      puts "Your current cause is: #{user.last_cause.name}"
      sleep 2
      puts "Locating charities that match your interest..."
      sleep 2
      puts "Charity found! You might be interested in supporting:"
      puts "----------- #{user.last_cause.charity} -----g------"
      puts "Mission statement: #{user.last_cause.mission}"
  end
  prompt = TTY::Prompt.new
  prompt.keypress("Press any key to continue.")
end

def delete_user(user)
  system "clear"
  puts "Username: #{user.name}"
  # puts "Your current cause is #{user.last_cause}"
  prompt = TTY::Prompt.new
  answer = prompt.yes?("Are you sure you want to delete profile?")
    if answer == true
      sleep 2
      puts "You have been deleted."
      user.user_causes.destroy
      user.destroy
      prompt = TTY::Prompt.new
      prompt.keypress("Press any key to continue.")
      system "clear"
      welcome
      sleep 2
      user = name_prompt
    else
      puts "Ok"
      sleep 2
  end
end

def home(user)
  system "clear"
  prompt = TTY::Prompt.new
  selection = prompt.select("What would you like to do?", ["Choose new cause", "Find a charity", "Delete profile", "Exit"])
  selection
    # if selection == "View current cause"
    #   view_cause(user)
    #
    # elsif selection == "Choose new cause"
    #   interest_prompt(user)
    #
    # elsif selection == "Delete profile"
    #   delete_user(user)
    #   welcome
    #   user = name_prompt
    # elsif selection == "Exit"
    #   f = "break"
    # end
end





# def show_charities
#   #user inputs 'interest' which is the same as the UserCause instance name.
#   #how to pull Charity instance name from that 
# end

# def find_charity
#   #given existing cause, return list of related charities
#   CharityCause.cause.find
# end

#def view_all_charities
#end

#def remove_charity
#end

#def go_back_to_home
  #in here you can go back and add/view/delete your charities
  #everytime user starts, they pick new cause.
#end
