class Student
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.find_student
        #find
        BoatingTest.all.find{|student| student.name == self}
    end

    def grade_percentage
        #float to_f
        tests = BoatingTest.all.find{|test| test.student.name == self.name}
        total_tests_passed = tests.find_all{|test| test.test_status == 'passed'}
        percentage = (tests.length.to_f) / (total_tests_passed.length.to_f) * 100
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end
end
