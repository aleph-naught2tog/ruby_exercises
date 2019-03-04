def get_quote
  puts("What is the quote?")
  gets().chomp()
end

def get_speaker
  puts("Who said it?")
  gets().chomp()
end

def run
  quote = get_quote()
  speaker = get_speaker()

  puts("#{speaker} says, \"#{quote}\"")
end

if __FILE__ == $0
  run()
end
