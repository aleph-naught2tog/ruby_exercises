require "utils"

def get_euros()
  Utils.to_number(Utils.prompt("How many euros are you exchanging?"))
end

def get_exchange_rate()
  Utils.to_number(Utils.prompt("What is the exchange rate?"))
end

def convert(euros, exchange_rate)
  euros * (exchange_rate / 100)
end

if __FILE__ == $0
  puts("running #{__FILE__}")
  euros = get_euros()
  rate = get_exchange_rate()
  result = convert(euros, rate)
  puts("#{euros} euros at #{rate} is $#{result.round(2)}")
end
