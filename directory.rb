#let's put all students into an array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #creates sn empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    puts "hobby?"
    hobby = gets.chomp
    puts "birth country?"
    birth_country = gets.chomp
    puts "height?"
    height = gets.chomp
    #add the student hash to the array
    students << {name: name, hobby: hobby, birth_country: birth_country, height: height, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    puts "Please enter the name of the next student"
    name = gets.chomp
  end
  #return the array of students
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  accumulator = 0
  until accumulator == students.length  do
# or while accumulator < students.length do
      puts "#{students[accumulator][:name]} cohort: #{students[accumulator][:cohort]}"
      accumulator += 1
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
