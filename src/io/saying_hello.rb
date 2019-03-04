def get_user_input
  puts("What is your name?")
  name = gets().chomp()
  return name
end

def print_message(name)
  puts("Hello, #{name}, nice to meet you!")
end

def run
  name = get_user_input()
  print_message(name)
end

if __FILE__ == $0
  run()
end
