require'pry'

def welcome
  puts "Welcome to the Charity Finder app!"
end

def name_prompt
  prompt = TTY::Prompt.new
  name = prompt.ask('What is your name?').chomp
  name = User.create(name: "#{name}")
end

def interest_prompt(user)
  prompt = TTY::Prompt.new
  choices = Cause.all.collect {|c| {"#{c.name}" => c}}
  interest = prompt.select('Choose your area of interest', choices)
  UserCause.create(user: user, cause: interest)
  puts "You have chosen to support #{interest.name}!"
    #what next - go home?
end

def users_id(name)
  User.find_by(name: name).id
end

def view_cause(user)
  if user.causes.size == 0
    puts "You haven't chosen a cause to support yet!"
     #return them to home
  elsif user.causes.size > 0
      puts "Your current cause is #{user.last_cause}"
  end
end

def delete_user(user)
  puts "username:#{user.name}"
  puts "your current cause is #{user.last_cause}"
  prompt = TTY::Prompt.new
  answer = prompt.yes?("Are you sure you want to delete profile?")
    if answer == true
      user.user_causes.destroy
      user.destroy
    end
    "delete"
end

def home(user)
  prompt = TTY::Prompt.new
  selection = prompt.select("What would you like to do?", ["View current cause", "Choose new cause", "Delete profile", "Exit"])
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
