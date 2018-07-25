class Student
    attr_accessor :first_name, :last_name
    @@all = []

    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name

        @@all << self
    end

# instance methods
    def add_boating_test(instructor, test_name, test_status)
        BoatingTest.new(
            instructor: instructor, 
            test_name: test_name, 
            status: test_status,
            student: self
            )
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    def boating_tests
        BoatingTest.all.select do |test| 
            test.student == self
            en
    end

# class methods
    def self.all
        @@all
    end

    def self.full_names
        @@all.map do |student|
            student.full_name
        end
    end

    def self.find_student(full_name)
        @@all.find { |student| student.full_name.downcase == full_name.downcase }
    end
end
