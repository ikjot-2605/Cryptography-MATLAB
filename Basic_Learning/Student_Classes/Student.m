classdef Student
    properties
        name
        age
        rollNumber
    end

    methods
        function obj = Student(name,age,rollNumber)
         obj.name = name;
         obj.age = age;
         obj.rollNumber = rollNumber;
      end
        function obj = getName(this)
            obj = (this.name);
        end
        function obj = getRollNumber(this)
            obj = (this.rollNumber);
        end
        function obj = getAge(this)
            obj = (this.age);
        end
        function this = setName(this,name)
            this.name= name;
        end
        function this = setRollNumber(this,rollNumber)
            this.rollNumber = rollNumber;
        end
        function this = setAge(this,age)
            this.age = age;
        end
        function introduceStudent(this)
            disp("This student's name is " + this.name + ". ")
        end
    end
end