class Instructor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

# Instance Method
    def fail_student(student_name, test_name)
        found_test = boating_tests.find do |test| 
            test.test_name == test_name && 
                test.student.full_name == student_name
        end
        found_test.status = 'failed'
    end

    def pass_student(student_name, test_name)
        found_test = boating_tests.find do |test| 
            test.test_name == test_name && 
                test.student.full_name == student_name
        end
        found_test.status = 'passed'
    end

    def boating_tests
        BoatingTest.all.select { |test| test.instructor == self }
    end
#class methods
    def self.all
        @@all
    end
end