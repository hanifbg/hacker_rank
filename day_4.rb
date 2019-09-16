class Person
    attr_accessor :age
    def initialize(initialAge)
        # Add some more code to run some checks on initialAge       
        if initialAge < 0
            @age = 0
            puts "Age is not valid, setting age to 0."
        else
            @age = initialAge
        end
    end
    def amIOld()
      # Do some computations in here and print out the correct statement to the console
      return puts "You are young." if @age < 13
      return puts "You are a teeneger." if @age >= 13 && @age < 18
      return puts "You are old."
    end
    def yearPasses()
        @age+=1
      # Increment the age of the person in here
    end
end

T=gets.to_i
for i in (1..T)do
    age=gets.to_i
    p=Person.new(age)
    p.amIOld()
    for j in (1..3)do
        p.yearPasses()
    end
    p.amIOld
  	puts ""
end      