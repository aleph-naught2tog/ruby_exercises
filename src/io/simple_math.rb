def get_first_number
  puts("What is the first number?")
  result = Integer(gets().chomp()) rescue nil
  unless result then get_first_number() else result end
end

def get_second_number
  puts("What is the second number?")

  result = Integer(gets().chomp()) rescue nil
  if not result
    get_second_number()
  else
    result
  end
end

def print_calculations(first_number, second_number)
  puts("#{first_number} + #{second_number} = #{first_number + second_number}")
  puts("#{first_number} - #{second_number} = #{first_number - second_number}")
  puts("#{first_number} * #{second_number} = #{first_number * second_number}")
  puts("#{first_number} / #{second_number} = #{first_number / second_number}")
end

def run
  first_number = get_first_number()
  second_number = get_second_number()
  print_calculations(first_number, second_number)
end

if __FILE__ == $0
  run()
end
