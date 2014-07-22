# puts "Name is: #{ENV["NAME"]}"
# ENV["NAME"] = "Alex"
# puts "Now name is: #{ENV["NAME"]}"

# ENV["WOULD_RISK_HIS_NECK_FOR_HIS_BROTHER_MAN"] = "This"
# puts ENV["WOULD_RISK_HIS_NECK_FOR_HIS_BROTHER_MAN"]

p "=="*20

p "Migrate the #{ENV["RACK_ENV"]} database."

p "+-"*20

def feed
  ENV["HUNGRY"] = false.to_s
end

def hungry
  if ENV["HUNGRY"] == false.to_s
    p "NOT NOW"
  else
    p "FEED ME"
  end
end

hungry
feed
hungry

p ">-"*20

puts "Favorite color in parent starts as: #{ENV['FAVORITE_COLOR']}"

fork do
  puts "Favorite color in child starts as: #{ENV['FAVORITE_COLOR']}"
  ENV["FAVORITE_COLOR"] = 'red'
  puts "Favorite color in child ends as: #{ENV['FAVORITE_COLOR']}"
end

puts "Favorite color in parent ends as: #{ENV['FAVORITE_COLOR']}"



p "=="*20

