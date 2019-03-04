def get_noun
  puts("Enter a noun: ")
  gets().chomp()
end

def get_verb
  puts("Enter a verb: ")
  gets().chomp()
end

def get_adjective
  puts("Enter an adjective: ")
  gets().chomp()
end

def get_adverb
  puts("Enter adverb: ")
  gets().chomp()
end

def print_madlib(noun, verb, adjective, adverb)
  result = "Do you #{verb} your #{adjective} #{noun} #{adverb}?"
  puts(result)
end

def run()
  noun = get_noun()
  verb = get_verb()
  adjective = get_adjective()
  adverb = get_adverb()
  print_madlib(noun, verb, adjective, adverb)
end

if __FILE__ == $0
  run()
end
