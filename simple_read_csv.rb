require_relative './helpers'
require 'csv'

# Reading CSV in the basic way
print_memory_usage do
  print_time_spent do
    csv = CSV.read('data.csv', headers: true)

    sum = 0

    csv.each {|row| sum += row['id'].to_i}

    puts "Sum: #{sum}"
  end
end

#### Result ####
# Sum: 499999500000
# Time: 17.92
# Memory: 932.45 MB
####        ####
