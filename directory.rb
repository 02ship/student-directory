@students = []
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "Please try again"
  end
end

def print_menu
  puts "1. Input the students" 
  puts "2. List the students"
  puts "9. Exit"
end
  
def show_students
  print_header
  print_students_list
  print_footer
end

def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  #while the name returned is not empty
  while !name.empty? do
    @students << { name: name, cohort: :november }
    puts "Now we have #{@students.count} students"
    #gets another student's name
    name = gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "---------------"
end

def print_students_list
  @students.each do |student| 
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer
  puts "Overall, we have #{@students.count} great students"
end

interactive_menu

