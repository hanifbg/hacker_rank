class Person
    def initialize(firstName, lastName, id)
        @firstName = firstName
        @lastName = lastName
        @id = id
    end
    def printPerson()
        print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
    end
end

class Student <Person
    #   Class Constructor
    #   
    #   Parameters:
    #   firstName - A string denoting the Person's first name.
    #   lastName - A string denoting the Person's last name.
    #   id - An integer denoting the Person's ID number.
    #   scores - An array of integers denoting the Person's test scores.
    #
    # Write your constructor here
    def initialize(firstName, lastName, id, score)
        super(firstName, lastName, id)
        @scores = score
    end

    #   Function Name: calculate
    #   Return: A character denoting the grade.
    #
    # Write your function here
    def calculate
        sum = 0
        @scores.each { |a| sum+=a}
        cal = sum/(@scores.count).to_f
        return "O" if cal >= 90 && cal <= 100
        return "E" if cal >= 80 && cal < 90
        return "A" if cal >= 70 && cal < 80
        return "P" if cal >= 55 && cal < 70
        return "D" if cal >= 40 && cal < 55
        return "T"
    end 
    
end

input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson           
print("\nGrade: " + s.calculate)