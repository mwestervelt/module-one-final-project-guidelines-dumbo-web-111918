
def welcome
  puts "Welcome to the app!"
end

def name_prompt
  prompt = TTY::Prompt.new
  name = prompt.ask('What is your name?').chomp
  name = User.create(name: "#{name}")

end

def interest_prompt
  prompt = TTY::Prompt.new
  choices = Cause.all.collect {|c| c.name}
  interest = prompt.select('Choose your area of interest', choices)
end

def show_charities
  #user inputs 'interest' which is the same as the UserCause instance name.
  #how to pull Charity instance name from that 
end

def find_charity
  #given existing cause, return list of related charities
  CharityCause.cause.find
end

#def view_all_charities
#end

#def remove_charity
#end

#def go_back_to_home
  #in here you can go back and add/view/delete your charities
  #everytime user starts, they pick new cause.
#end
