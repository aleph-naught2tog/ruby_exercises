def get_user_input
  puts("What is the input string?")
  gets().chomp()
end

def print_result(input)
  puts("The input string #{input} has #{input.length} characters.")
end

def run
  print_result(get_user_input())
end

if __FILE__ == $0
  run()
end
