%Autor:Michael Tracey
%Email:tracey93@rowan.edu
%Created On:11/1/24
%Updated On:11/13/24
%All Righst reserved

number_of_students = input("We are looking for student with an ID number of 001. How many students would you like in your database?");

db = StudentDB;
size = number_of_students + 1;
db = db.initDB(size);

count = number_of_students;
for i =1:count
    db = db.createUser();
end

db.showStudent();


target_id = '001';
db.findStudent(target_id)