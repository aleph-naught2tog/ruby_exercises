require "utils"

def calculate_subtotal()
  counter = 0
  subtotal = 0
  puts("Please enter your items, or 'q' to stop.")

  while price_input = Utils.prompt("Enter price of item #{counter}: ")
    unless price_input.start_with?('q')
      quantity_input = Utils.prompt("Enter the quantity of item #{counter}: ")
      unless quantity_input.start_with?('q')
        price = Utils.to_number(price_input)
        quantity = Utils.to_number(quantity_input)
        subtotal += (price * quantity)
        counter += 1
      else
        break
      end
    else
      break
    end
  end

  return subtotal
end

def calculate_tax(subtotal)
  tax = 0.055
  tax * subtotal
end

def run()
end

if __FILE__ == $0
  subtotal = calculate_subtotal()
  tax = calculate_tax(subtotal)

  puts("Subtotal: $#{subtotal}")
  puts("Tax: $#{tax}")
  puts("Total: $#{subtotal + tax}")
end
