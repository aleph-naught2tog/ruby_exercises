# 1. a lottery entry is five numbers in order, e.g. 4, 6, 8, 1, 2
# 2. people pick five numbers for the lottery
# 3. a person wins if they pick the correct numbers in the right order

# write a program that:
# given a list of winning numbers,
# MATCHES those numbers against the list of players
# and DISPLAYS the players, and the numbers they got correct
# where correct is: the right number IN the right position

def score_me(correct, guess)
    return 0 # an integer
end

guesses = {
    alice: [1,2,3,4,5],
    bob:   [2,4,6,8,10],
    chad:  [3,2,5,6,8],
    david: [11,12,5,15,18],
    ethan: [0,1,2,3,4]
}

# collect the winning numbers from the console n shit

# each_windex is a totally different thing

correct_numbers = [] # put numbers here later

guesses.each do |name, list|

  # list.each_with_index do |value, index|
  # end
end
