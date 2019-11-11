require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


student_1 = Student.new("mengs_1")
student_2 = Student.new("mengs_2")
student_3 = Student.new("mengs_2")

instructor_1 = Instructor.new("sol_1")
instructor_2 = Instructor.new("sol_2")
instructor_3 = Instructor.new("sol_3")
# binding.pry

BoatingTest.new(student_1, "name_1", "passed", instructor_1)
BoatingTest.new(student_2, "name_2", "passed", instructor_2)
BoatingTest.new(student_3, "name_3", "fail", instructor_3)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

