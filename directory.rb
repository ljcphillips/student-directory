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
    puts "hobby?".center(80)
    hobby = gets.chomp
    puts "birth country?".center(80)
    birth_country = gets.chomp
    puts "height?".center(80)
    height = gets.chomp
    #add the student hash to the array
    students << {name: name, hobby: hobby, birth_country: birth_country, height: height, cohort: :november}
    puts "Now we have #{students.count} students".center(80)
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
  accumulator = 0
  until accumulator == students.length  do
# or while accumulator < students.length do
      puts "#{students[accumulator][:name]} cohort: #{students[accumulator][:cohort]}".center(80)
      accumulator += 1
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(80)
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
