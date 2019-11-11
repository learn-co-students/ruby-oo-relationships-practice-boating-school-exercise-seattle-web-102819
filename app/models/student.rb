class Student
    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self 
    end 
    
    def self.all
        @@all
    end 
 def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
 end 
  def self.find_student(name)
    @@all.select {|student| student.first_name == name}
  end 

  def grade_percentage
    tests = BoatingTest.all.select {|boatingtest| boatingtest.student == self}
    test_passed = tests.select {|boatingtest| boatingtest.status == 'passed'}
    test_passed.count / tests.count.to_f
  end 

end
