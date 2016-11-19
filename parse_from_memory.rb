require_relative './helpers'
require 'csv'

print_memory_usage do
  print_time_spent do
    content = File.read('data.csv')
    csv = CSV.parse(content, headers: true)
    sum = 0

    csv.each do |row|
      sum += row['id'].to_i
    end

    puts "Sum: #{sum}"
  end
end

#### Result ####
# Sum: 499999500000
# Time: 9.97
# Memory: 0.61 MB
####        ####
