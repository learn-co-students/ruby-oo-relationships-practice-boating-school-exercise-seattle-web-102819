require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new('Joe')
s2 = Student.new('John')

i1 = Instructor.new('Jack')
i2 = Instructor.new('Jill')

bt1 = BoatingTest.new(s1, 'passed', i1)
bt2 = BoatingTest.new(s2, 'failed', i2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

