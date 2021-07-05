class Student
    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(student, test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(name)
        @@all.find {|student| student.first_name == name}
    end

    #match a test to a name
    #take passed ones and then get total 
    #take average 
    # def grade_percentage
    #     passed_test = 0
    #     total_test = 0
    #     student_tests = BoatingTest.all.map do |boatingtest| 
    #         if boatingtest.student == self
    #             total_test += 1
    #             if boatingtest.status == "passed"
    #                 passed_test += 1
    #             end
    #         end      
    #     end
    #     (passed_test.to_f / total_test.to_f)*100
    # end

    def grade_percentage
        total_tests = BoatingTest.all.select do |boatingtest| 
            boatingtest.student == self
            boatingtest.test_name
        end
        passed_test = total_tests.select do |boatingtest|
            boatingtest.status == "passed"
        end
        (passed_test / total_test).to_f*100
    end

end
