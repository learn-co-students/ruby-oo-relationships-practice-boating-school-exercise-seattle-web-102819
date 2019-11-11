class Instructor
    @@all = []
    attr_accessor :name 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all
    end 
 
    def pass_student(test_name, student)
        matched_bt = BoatingTest.all.select do |bt|
            bt.boating_test_name == test_name &&
            bt.student == student &&
            bt.instructor == self
        end 
        if matched_bt.any?
            matched_bt[0].boating_test_status = "passed"
            matched_bt[0]
        else 
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(test_name, student)
        matched_bt = BoatingTest.all.select do |bt|
            bt.boating_test_name ==test_name &&
            bt.student == student &&
            bt.instructor == self 
        end 
        if matched_bt.any?
            matched_bt[0].boating_test_status = "failed"
            matched_bt[0]
        else 
            BoatingTest.new(student, test_name, "failed", self)
        end
    end 

   
end
