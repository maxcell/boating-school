require_relative '../config/environment'
patrick = Student.new('Patrick', 'Star')
spongebob = Student.new('Spongebob', 'Squarepants')
squidward = Student.new('Squidward', 'Tentacles')

mrs_puff =  Instructor.new('Mrs. Puff')
eugene =  Instructor.new('Eugene Krabs')
pearl = Instructor.new('Pearl Krabs')
voldemort = Instructor.new('Voldemort')

test1 = BoatingTest.new(
    student: patrick, 
    instructor: mrs_puff, 
    test_name: 'Canoe'
    )

test2 = BoatingTest.new(
    student: spongebob, 
    instructor: mrs_puff, 
    test_name: 'Canoe'
    )

test3 = BoatingTest.new(
    student: patrick, 
    instructor: mrs_puff, 
    test_name: 'raft'
    )

test4 = BoatingTest.new(
    student: patrick, 
    instructor: voldemort, 
    test_name: 'raft'
    )

binding.pry
'Something'