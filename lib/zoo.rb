class Zoo

  attr_accessor :cages
  attr_reader :employees

  def initialize(name, open_date, closing_date)
    @open_date = open_date
    @closing_date = closing_date
    @cages = create_cages
    @employees = []
  end

  def create_cages
    cages = []
    10.times do 
      cage = Cage.new
      cages << cage
    end
    cages
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    if date >= @open_date && date <= @closing_date
        return true
    end
    return false
  end

  def add_animal(animal)
    cages.each do |cage|
        if cage.empty?
            cage.animal = animal
            return cage
        end
    end
    "Your zoo is already at capacity!"
  end

  def visit
    every_greet = ""
    employees.each do |employee|
        every_greet += "#{employee.greet}\n"
    end

    cages.each do |cage|
        if !cage.empty?
            every_greet += "#{cage.animal.speak}\n"
        end
    end
    return every_greet
  end

  
end