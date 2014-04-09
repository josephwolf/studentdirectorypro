@students = [
{:name => "Steve Musgrave", :cohort => "March", :gender => "Male"},
{:name => "Sroop Sunar", :cohort => "March", :gender => "Female"},
{:name => "Colin Marshall", :cohort => "March", :gender => "Male"},
{:name => "Josh Fail-Brown", :cohort => "March", :gender => "Male"},
{:name => "Louise Lai", :cohort => "March", :gender => "Female"},
{:name => "Robin Doble", :cohort => "March", :gender => "Male"},
{:name => "Alex Wong", :cohort => "March", :gender => "Male"},
{:name => "Scott Dimmock", :cohort => "March", :gender => "Male"},
{:name => "Muhanad Al-Rubaiee", :cohort => "March", :gender => "Male"},
{:name => "Shelley Hope", :cohort => "March", :gender => "Female"},
{:name => "Will Hall", :cohort => "March", :gender => "Male"},
{:name => "Oliver Delevingne", :cohort => "March", :gender => "Male"},
{:name => "Nico Saueressig", :cohort => "March", :gender => "Male"},
{:name => "Apostolis", :cohort => "March", :gender => "Male"},
{:name => "Stefania", :cohort => "March", :gender => "Female"},
{:name => "Robert Leon", :cohort => "March", :gender => "Male"},
{:name => "Emma Williams", :cohort => "March", :gender => "Female"},
{:name => "Joey Wolf", :cohort => "March", :gender => "Male"},
{:name => "Julie Walker", :cohort => "March", :gender => "Female"},
{:name => "Daniel Le Dosquet", :cohort => "March", :gender => "Male"},
{:name => "Mario Gintili", :cohort => "February", :gender => "Male"},
{:name => "Mikhail Dubov", :cohort => "February", :gender => "Male"},
{:name => "Karolis Noreika", :cohort => "February", :gender => "Male"},
{:name => "Michael Sidon", :cohort => "February", :gender => "Male"},
{:name => "Charles De Barros", :cohort => "February", :gender => "Male"},
{:name => "Ruslan Vikhor", :cohort => "February", :gender => "Male"},
{:name => "Toby Retallick", :cohort => "February", :gender => "Male"},
{:name => "Mark Mekhaiel", :cohort => "February", :gender => "Male"},
{:name => "Sarah Young", :cohort => "February", :gender => "Female"},
{:name => "Hannah Wight", :cohort => "February", :gender => "Male"},
{:name => "Khushkaran Singh", :cohort => "February", :gender => "Male"},
{:name => "Rick brunstedt", :cohort => "February", :gender => "Male"},
{:name => "Manjit Singh", :cohort => "February", :gender => "Male"},
{:name => "Alex Gaudiosi", :cohort => "February", :gender => "Male"},
{:name => "Ross Hepburn", :cohort => "February", :gender => "Male"},
{:name => "Natascia Marchese", :cohort => "February", :gender => "Male"},
{:name => "Tiffanie Chia", :cohort => "February", :gender => "Male"},
{:name => "Matthew Thomas", :cohort => "February", :gender => "Male"},
{:name => "Freddy McGroarty", :cohort => "February", :gender => "Male"},
{:name => "Tyler Rollins", :cohort => "February", :gender => "Male"},
{:name => "Richard Curteis", :cohort => "February", :gender => "Male"},
{:name => "Anna Yanova", :cohort => "February", :gender => "Male"},
{:name => "Mistery Man", :cohort => "February", :gender => "Male"},
]

def print_header
	puts "List of students at Makers Academy"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
end

def print(input)
	input.each do |student|
		puts "Name: #{student[:name]}\t\tCohort: #{student[:cohort]}\tSex: #{student[:gender]}"
	end
end

def print_footer(input)
	febchecker = input.select do |student|
		student[:cohort].include? ("February")
	end

	marchecker = input.select do |student|
		student[:cohort].include? ("March")
	end

	girlchecker = input.select do |student|
		student[:gender].include? ("Female")
	end


	boychecker = @students.length - girlchecker.length

	puts"The February cohort has #{febchecker.length} students."
	puts"The March cohort has #{marchecker.length} students."
	puts"The there are #{girlchecker.length} girls"
	puts"The there are #{boychecker} boys!"
	puts"All in all, there are #{@students.length} makers!"
end



def input_students
	@students ||= []
	puts "Doing new students. Leave name empty when finished."
	while true do puts "Enter name"
		name = gets.chomp.strip.capitalize
		break if name.empty?
		puts "Enter cohort"
		cohort = gets.chomp.strip.capitalize
		(puts "You need to enter a cohort!"; cohort = gets.chomp.strip.capitalize) until !cohort.empty?
		puts "Enter sex"
		gender = gets.chomp.strip.capitalize
		(puts "You need to enter a gender!"; gender = gets.chomp.strip.capitalize) until !gender.empty?
		student = {:name => name, :cohort => cohort, :gender => gender}
		@students<<student
	end
	puts "There are now #{@students.length} students."	
end

def interactive_menu
	loop do
		puts "Please select an option"
		puts "1. Add new student(s) to the list"
		puts "2. See list of students"
		puts "9. Exit the program"
		selection = gets.chomp
		case selection
		when "1"
			input_students
		when "2"
			print_header
			print(@students)
			print_footer(@students)
		when "9"
			exit
		else
			puts "Please input a number!"
		end
	end
end

interactive_menu

# vvvvv Shitty old methods I was using vvvvv

# def dont_leave(field)
# 	(puts "You need to enter a #{field}!"; field = gets.chomp.strip) until !field.empty?
# end

# def input_students
# 	puts "Please enter the names of the students"
# 	puts "To finish, please press enter twice."

# 	new_students = []
# 	student = input_a_student

# 	while !student.nil? do
# 		new_students << student
# 		student = input_a_student
# 	end
# 	puts "Now we have #{new_students.length} students."
# 	new_students
# end

# def input_a_student
# 	puts "Enter name"
# 	name = gets.chomp.strip
# 	return nil if name.empty?
# 	puts "Please enter the cohorts of the students" 
# 	cohort = gets.chomp 
# 	puts "Please enter the sex of the students"
# 	sex = gets.chomp
# 	{:name => name, :cohort => cohort, :gender => sex}
# end

# def new_student
# 	puts "Enter name"
# 	name = gets.chomp.strip
# 	return nil if name.empty?
# 	puts "Enter cohort"
# 	cohort = gets.chomp.strip
# 	return "You must enter a cohort!" if cohort.empty?
# 	puts "Enter sex"
# 	gender = gets.chomp.strip
# 	return "You must enter a gender!" if gender.empty?
# 	student = {:name => name, :cohort => cohort, :gender => gender}
# end