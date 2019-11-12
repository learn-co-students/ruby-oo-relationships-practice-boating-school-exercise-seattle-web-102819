class Instructor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
       abc = BoatingTest.all.select do |boatingtest| 
            boatingtest.student == student.first_name && boatingtest.test_name == test_name && boatingtest.instructor == self
            abc.map {|boatingtest| boatingtest.status = "passed"}
   
                
        #     else
        #         BoatingTest.new(student, test_name, status="passed", self )
        #     end
        # BoatingTest
        end
    en
end
