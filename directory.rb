puts "The students of Villains Academy"
puts "---------------"
# printing a list of students enrolled
students = ["Hannibal Lecter", 
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger", 
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"]
students.each do |student| 
  puts student
end
# print-ing to keep on one line
print "Overall, we have #{students.count} great students"