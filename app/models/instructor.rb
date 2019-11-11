class Instructor
  attr_reader :name
  @@all = []
    
   def initialize(name)
     @name = name
     @@all << self 
  end 
        
    def self.all
        @@all
    end 
 def pass_student(name)
  test_name=BoatingTest.all.select {|boatingtest| boatingtest.name == "name_2"}
  test_name.select {|boatingtest| boatingtest.status == "fail" }
 end 

end
