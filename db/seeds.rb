require "open-uri"

puts 'Cleaning database...'
Flat.destroy_all
puts 'Done'

puts 'Creating 6 flats...'
url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
flats = JSON.parse(open(url).read)
flats.each do |flat|
  Flat.create!(
    name: flat['name'],
    image_url: flat['imageUrl'],
    price: flat['price'],
    currency: flat['priceCurrency']
  )
end
puts "Seeded #{Flat.count} flats"

puts 'Finished!'
