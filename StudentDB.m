%Autor:Michael Tracey
%Email:tracey93@rowan.edu
%Created On:11/1/24
%Updated On:11/13/24
%All Righst reserved


classdef StudentDB
    properties
        size = 10
        studentList = [Student]
        number_of_users = 0
    end
    methods
      
        function res = initDB(currentObj, size)
            %Initialize the array og objects and allocate the memory
            currentObj.studentList(1:size) = Student;
            currentObj.size = size;
            currentObj.studentList(1:currentObj.size) = Student;
            res = currentObj;
        end   

        function res = createUser(currentObj)
            %check if the space is not full
            if currentObj.number_of_users + 1 < currentObj.size
                student = Student;
                %implement that student get info
                currentObj.studentList(currentObj.number_of_users + 1) = student.studentInit;
                currentObj.number_of_users = currentObj.number_of_users + 1;
                res = currentObj
            else
                fprintf("The database is full \n");
                res = currentObj;
            end

        end   

        function res = showStudent(currentObj)           %Show the students that fall in thit category
            for i = 1:currentObj.number_of_users
                fprintf("Student %d \n", i);
                currentObj.studentList(i).showStudent();
            end
        end

        function res = findStudent(currentObj, student_id)
            res = 0;
            for i = 1:currentObj.number_of_users
                if strcmp(currentObj.studentList(i).student_id, student_id)    %Find specific students 
                    currentObj.studentList(i).showStudent();
                    res = 1;
                    break;
                end
            end
            if res == 0
               fprintf("No Student");
            end
        end
        function res = major_of_student(currentObj, major)
            for i = 1:currentObj.number_of_users                           %Find students by major
               if strcmp(currentObj.studentList(i).student_major, major)
                   currentObj.studentList(i).showstudent(); 
                   fprintf("Students in major: %s\n", major)
               end
            end
        end
        function GPA_avg = avg_GPA_of_major(currentObj, major)      %Find GPA avg by major
            count = 0
            for i = 1:currentObj.number_of_users
                if strcmp(currentObj.studentList(i).student_major, major)
                    GPA_tot = GPA_tot + currentObj.studentList(i).student_GPA;
                    count = count + 1;
                end
            end

            if count > 0
                GPA_avg = GPA_tot / count;
                fprintf("Average GPA for %s is: %.2f\n", major, GPA_avg);
            else
                fprintf("This major has no students of that GPA: %s\n", major);
            end
        end    

        %histogram(GPA_avg)
        %xlabel('GPA')
        %ylabel('Students')
        %title('GPA of students')
    end
end