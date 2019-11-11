class Student
    @@all = []
    def initialize(first_name)
        @first_name = first_name 
        @@all << self 
    end 
    def self.all
        @@all
    end 

    def add_boating_test(boating_test_name, boating_test_status, instructor) 
        BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
    end 
    
    def self.find_student(firstname)
       @@all.select do |sd|
        sd.first_name == firstname
       end 
    end  
    
end
