module Utils
  def Utils.to_number(value)
    Float(value)
  rescue ArgumentError
  end

  def Utils.prompt(question)
    puts(question)
    gets().chomp()
  end
end
