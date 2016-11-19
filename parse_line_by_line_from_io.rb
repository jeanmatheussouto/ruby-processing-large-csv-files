require_relative './helpers'
require 'csv'

print_memory_usage do
  print_time_spent do
    File.open('data.csv', 'r') do |file|
      sum = 0

      CSV.foreach('data.csv', headers: true) do |row|
        sum += row['id'].to_i
      end

      puts "Sum: #{sum}"
    end
  end
end

#### Result ####
# Sum: 499999500000
# Time: 11.09
# Memory: 0.6 MB
####        ####
