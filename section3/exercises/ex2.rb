#Exercise 39:  Hashes, Oh Lovely hashes

#create a mapping of state to abbreviation

states = {
  "Oregon" => "OR",
  "Florida" => "FL",
  "California" => "CA",
  "New York" => "NY",
  "Michigan" => "MI",
}

#create a basic set of states and some cities in them
cities = {
"CA" => "San Francisco",
"MI" => "Detroit",
"FL" => "Jacksonville",
}

#add some more cities

cities["NY"] = "New York City"
cities["OR"] = "Portland"

puts '-' * 10
puts "NY State has:  #{cities["NY"]}"
puts "OR State has:  #{cities["OR"]}"

puts '-' * 10
puts "Michigan's abbreviation is:  #{states["Michigan"]}"
puts "Florida's abbreviation is:  #{states["Florida"]}"

puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
state = states ["Texas"]
if !state
  puts "Sorry, no Texas."
end

#default values using ||= with the nil result
city = cities["TX"]
city ||= "Does not exist"
puts "The city for the state 'TX' is:  #{city}"
