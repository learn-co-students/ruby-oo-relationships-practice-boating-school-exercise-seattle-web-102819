class Instructor
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        @@all << self
    end

    def pass_student(student_name, test_name)
        #
        pass_tests = BoatingTests.all.find{|test| test.student.name == student_name && test.name == test_name}
        if pass_tests
            pass_tests.status = "Passed"
        else
            BoatingTest.new(student_name, test_status = "Passed", self)
        end
    end

    def fail_student(student_name, test_name)
        #
        fail_tests = BoatingTest.all.find{|test| test.student.name == student_name && test.name == test_name}
        if fail_tests
            fail_tests.status = "Failed"
        else
            BoatingTest.new(student_name, test_status = "Failed", self)
        end
    end
end
