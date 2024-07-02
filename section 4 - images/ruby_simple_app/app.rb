require 'faker'

puts "Welcome, #{ENV['USER_NAME']}!"
puts Faker::Address.full_address
