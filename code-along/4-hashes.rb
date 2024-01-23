# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# Hashes are lists of *key-value pairs*
# More Complex layered Hashes
license = {
"name" => {
    "first_name" => "Mclovin",
    "last_name" => "Ma"
},    
"description" => "make list",
"location" => {
    "city" => "Evanston",
    "State" => "IL"
},
"birth-date" => "1-1-2000",
"timeline" => [
    {"status"=> "eat lunch", "posted"=> "12 pm"},
    {"status"=> "class", "posted"=> "9 am"}
]
}

# Accessing data from the hash
puts license
puts license["name"]
puts license["location"]
puts "first status in the timeline: #{license["timeline"][0]["status"]}"