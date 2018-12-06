require'pry'
require'colorized_string'
require'colorize'
require'rainbow'



def welcome
  puts "Welcome to CharityMatch!"
  sleep 2
end

def name_prompt
  system "clear"
  prompt = TTY::Prompt.new
  puts "CharityMatch"
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
      puts "Your current cause is: #{user.last_cause.name}"
      sleep 2
      puts "Searching..."
      sleep 2
      puts "Locating charities that match your interest..."
      sleep 2
      puts "Charity found! You might be interested in supporting:"
      puts ""
      puts "------------------------- #{user.last_cause.charity} -------------------------"
      puts ""
      puts "Mission statement: #{user.last_cause.mission}"
      puts ""
      puts "-------------------------------------------------------------------------"
      sleep 2
      puts Rainbow("Congrats, you're a great person! 😇").red.bright.blink
      puts Rainbow("Congrats, you're a great person! 😇").indianred.bright
      puts Rainbow("Congrats, you're a great person! 😇").orange.bright
      puts Rainbow("Congrats, you're a great person! 😇").yellow.bright
      puts Rainbow("Congrats, you're a great person! 😇").olive.bright
      puts Rainbow("Congrats, you're a great person! 😇").green.bright
      puts Rainbow("Congrats, you're a great person! 😇").cyan.bright
      puts Rainbow("Congrats, you're a great person! 😇").blue.bright
      puts Rainbow("Congrats, you're a great person! 😇").purple.bright
      puts Rainbow("Congrats, you're a great person! 😇").magenta.bright
      puts " "
  sleep 2
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
      puts "Lame. You have been deleted. "
      user.user_causes.destroy
      user.destroy
      prompt = TTY::Prompt.new
      prompt.keypress("Press any key to continue.")
      system "clear"
      welcome
      sleep 2
      "d"
    else
      puts "Ok, cool."
      sleep 2
      "k"
  end
end

def home(user)

  user.reload
  if user.causes.size >= 1
    system "clear"
    prompt = TTY::Prompt.new
    puts "CharityMatch Home: to get matched with a Charity, first choose a cause you would like to support -"
    selection = prompt.select("What would you like to do, #{user.name}?", ["Choose new cause", "Find a charity", "Delete profile", "Exit"])
    selection
  else
    system "clear"
    prompt = TTY::Prompt.new
    puts "CharityMatch Home: to get matched with a Charity, first choose a cause you would like to support -"
    selection = prompt.select("What would you like to do, #{user.name}?", ["Choose new cause", "Delete profile", "Exit"])
    selection
 end
end

#
# Giphy::Configuration.configure do |config|
#   config.version = THE_API_VERSION
#   config.api_key = YOUR_API_KEY
# end


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
