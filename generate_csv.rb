require 'csv'
require_relative './helpers'


headers = %w(id name email city street country)

name = "Jean Matheus Souto"
email = "jeanmatheussouto@gmail.com"
city = "Florianopolis"
street = "My street"
country = "Brazil"

print_memory_usage do
  print_time_spent do
    CSV.open('data.csv', 'w', write_headers: true, headers: headers) do |csv|
      1_000_000.times do |i|
        csv << [i, name, email, city, street, country]
      end
    end
  end
end
