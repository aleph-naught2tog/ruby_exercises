def get_age()
  puts("What is your current age?")
  result = Float(gets().chomp()) rescue nil
  unless result then get_age() else result end
end

def get_retirement_age()
  puts("At what age would you like to retire?")
  result = Float(gets().chomp()) rescue nil
  unless result then get_retirement_age() else result end
end

def run()
  current_year = Time.now().year()

  age = get_age()
  retirement = get_retirement_age()

  difference = retirement - age
  target_year = current_year + difference

  puts("You have #{difference} years until you can retire.")
  puts("It's #{current_year}, so you can retire in #{target_year}")
end

if __FILE__ == $0
  run()
end
