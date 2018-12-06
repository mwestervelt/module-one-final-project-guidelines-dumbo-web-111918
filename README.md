# CharityMatch

CharityMatch is a CLI app that matches you up with a charity based on your interests.

## Highlights
 * Users will be able to choose from a list of causes and be returned a highly rated non-profit organization that aligns with their chosen cause.
 * Users will also be able to update their chosen cause and be matched with new charities.
 * Users will be able to enter a desired username, and view the cause that they have chosen to support.
 * Users will be able to delete their CharityMatch profile, if desired.

## Usage
    1. bundle install
    2. rake db:migrate
    3. rake db:seed
    4. ruby bin/run.rb
    5. you're welcome

## Contributing
  * This is a project for Flatiron School: Access Labs campus and is not really meant to be a fully deployed app.
  * That being said, any suggestions on making this thing work better are welcome!

# 3 things we learned in the process of working on this project.
  1. ActiveRecord - we were pretty shaky on the whole thing before this project and were ~forced~ to learn those commands and concepts pretty quickly.
  2. TTY Prompt - we learned about this super cool tool that makes prompts really easy and fun to implement.
  3. If you create a variable outside a loop, and you want to operate on it, you have to variable.reload for it to work!

## Changes for CharityMatch 2.0
  * We originally thought we could tackle an API that would allow users to search ~any~ cause and match that up in the APIs database with the top search result, however all the charity websites APIs we found were definitely not public and were only 30 day trials. Would like to figure out how that works or if we could find one that was totally free.
  * Incorporate some sort of donation functionality and keep record of your donations to your causes/charities.   
