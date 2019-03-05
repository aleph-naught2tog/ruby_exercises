require "utils"

def get_area_equation(kind)
  case kind
  when :round
    lambda { |radius, _| Math::PI * (radius ** 2) }
  when :square
    lambda { |length, width| length * width  }
  end
end

def get_width()
  result = Utils.to_number(Utils.prompt("What is the width?"))
end

def get_length()
  result = Utils.to_number(Utils.prompt("What is the length?"))
end

def get_gallons(length, width, block)
  gallons_per_square_feet = 350
  area = block.call(length, width)
  puts("Got area: #{area}")
  (area / gallons_per_square_feet).ceil()
end

def pick_room_kind()
  puts("What shape is the room?")
  puts("1 - round")
  puts("2 - square")

  case gets().chomp()
  when "1" then :round
  when "2" then :square
  else
    puts("That's not a valid option, please try again.")
    pick_room_kind()
  end
end

def run()
  kind = pick_room_kind()
  equation = get_area_equation(kind)

  length = get_length()
  width = get_width()
  gallon = get_gallons(length, width, equation)

  puts("You will need to purchase #{gallon} gallons of paint \
to cover #{width * length} square feet.")
end

if __FILE__ == $0
  run()
end
