def get_length()
  puts("What is the length of the room in feet?")
  result = to_number(gets().chomp())
  if not result
    get_length()
  else
    result
  end
end

def to_number(result)
  Float(result)
rescue ArgumentError
end

def get_width()
  puts("What is the width of the room in feet?")
  result = to_number(gets().chomp())
  if not result
    get_length()
  else
    result
  end
end

def feet_to_square_meters(feet)
  meters_per_square_foot = 0.09290304
  feet * meters_per_square_foot
end

def run()
  length = get_length()
  width = get_width()
  puts("You entered #{length}x#{width} feet.")
  puts("The total area is: #{feet_to_square_meters(length * width)}m")
end

if __FILE__ == $0
  run()
end
