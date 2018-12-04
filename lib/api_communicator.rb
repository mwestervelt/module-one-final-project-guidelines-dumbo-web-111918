# require 'rest-client'
# require 'json'
# require 'pry'

# def url_stuff
#   response_string = RestClient.get('http://www.swapi.co/api/people/')
#   response_hash = JSON.parse(response_string)
# end

# response = RestClient.get('https://api.globalgiving.org/api/public/orgservice/all/organizations?api_key=baff00ef-bd93-479d-9417-bc58c821039
# c', {"Accept" => "application/json", "Content-Type" => "application/json"})
# response_hash = JSON.parse(response)
#  themes = https://api.globalgiving.org/api/public/projectservice/themes?api_key=baff00ef-bd93-479d-9417-bc58c821039c
# this is theme query "https://api.globalgiving.org/api/public/services/search/projects?api_key=baff00ef-bd93-479d-9417-bc58c821039c&q=#{user_theme}"
# https://api.globalgiving.org/api/public/orgservice/all/organizations?api_key=baff00ef-bd93-479d-9417-bc58c821039c

#theme is the hash that contains theme key and value is array that contains id/name which are also kv pairs.
#themes[theme]["name"]
