%Autor:Michael Tracey
%Email:tracey93@rowan.edu
%Created On:11/1/24
%Updated On:11/13/24
%All Righst reserved

classdef Student
    properties
        student_id = "" %string
        student_name = ""  %string
        student_age  = ""  %string
        student_GPA = ""   %string
        student_major = ""   %string
    end

    methods
        function show_students_info = showStudent(currentObj)   %Logical definitions
            fprintf("The Student id is %s \n", currentObj.student_id)
            fprintf("The Student name is %s \n", currentObj.student_name)
            fprintf("The Student age is %s \n", currentObj.student_age)
            fprintf("The Student GPA is %s \n", currentObj.student_GPA)
            fprintf("The Student major is %s \n", currentObj.student_major)

            show_students_info = 1;
        end
        function res = studentInit(currentObj)         %Asking studnet for all of their information
            currentObj.student_id = input("What is the student id of the student?", "s");
            currentObj.student_name = input("What is the name of the student?", "s");
            currentObj.student_age = input("What is the age of the student?", "s");
            currentObj.student_GPA = input("What is the GPA of the student?", "s");
            currentObj.student_major = input("What is the major of the student?", "s");
            
            res = currentObj;
        end

    end

end