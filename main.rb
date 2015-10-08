require_relative 'car'
require_relative 'truck'
require_relative 'sport_car'

truck = Truck.new
truck.start_engine
puts "Car RPM #{truck.current_rpm}"
