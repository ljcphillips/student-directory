def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end
#let's put all students into an array
def input_students
  puts "Please enter the names of the students".center(80)
  puts "To finish, just hit return twice".center(80)
  #creates sn empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    puts "cohort?".center(80)
    cohort = gets.chomp
      if cohort.empty?
        cohort = "december"
      end
#    puts "Your cohort is #{cohort}. Is that correct? (Y/N)"
#    answer = gets.chomp
#      if answer == "N"
#        puts "cohort?".center(80)
#        cohort = gets.chomp
#      end
    #add the student hash to the array
    students << {name: name,cohort: cohort.to_sym}
    if students.count == 1
    puts "Now we have #{students.count} student".center(80)
  else
    puts "Now we have #{students.count} students".center(80)
  end
    #get another name from the user
    puts "Please enter the name of the next student".center(80)
    name = gets.chomp
  end
  #return the array of students
  students
end
def print_header
  puts "The students of Villains Academy".center(80)
  puts "-------------".center(80)
end
def print(students)
  students.map {|x|x[:cohort] }.uniq.each do |y|
    puts students.select{|x| x[:cohort] == y}
    end
  end

#  accumulator = 0
#  until accumulator == students.length  do
# or while accumulator < students.length do
#      puts "#{students[accumulator][:name]} cohort: #{students[accumulator][:cohort]}".center(80)
#      accumulator += 1
#  end
def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(80)
end
#nothing happens until we call the methods
interactive_menu
students = input_students
print_header
print(students)
print_footer(students)
