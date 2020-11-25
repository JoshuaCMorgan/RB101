vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  vehicle_count = {}

  vehicles.each do |vehicle|
     vehicle_count[vehicle] = vehicles.count(vehicle)
  end

  vehicle_count.each do |vehicle, total|
    puts "#{vehicle} => #{total}"
  end
end


count_occurrences(vehicles)
