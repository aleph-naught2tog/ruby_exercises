#!/usr/bin/env ruby

require 'pp'

if __FILE__ == $0
  puts("running #{__FILE__}")

  students = []

  [ "Harry Potter",
    "Hermione Granger",
    "Underappreciated Ron Weasley",
    "Neville Longbottom"
  ].each do |student_name|
    students.push(student_name)
  end

  students.each { |name| puts(name) }

  print("Expel(liarmus?) a student: ")
  name = gets().chomp()

  pp students.select { |s| s.downcase != name.downcase }
end

# 1. Create a small program that contains a list of student names.
# 2. Print out the list of names when the program runs the first time.
# 3. Prompt for an student name, remove that specific name from the list of names.
# 4. Display the remaining students, each on its own line.

# let's play!

# i feel like i'm missing so much.
