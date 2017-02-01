require pry

class Person

attr_accessor :name, :hair_color, :weight, :height

#attr_accessor is a super shortcut for 'getter' and 'setter'
# attr_writer :name, :hair_color, :weight, :height
# attr_reader :name, :hair_color, :weight, :height

#These are 'getter' and 'setter' statements, Ruby has a shortcut to mass write these, see above
  # def name=(new_name)
  #   @name = new_name
  # end
  #
  # def name
  #   @name
  # end
  def initialize (name, hair_color="Blonde", weight=10, height=12)
    @name = name
    @hair_color = hair_color
    @weight = weight
    @height = height
  end


  def walk (miles)
    "I would walk #{miles} miles"
  end

  def speak (phrase)
    system("say #{phrase}")
  end

class Baby < Person #Baby inherits traits (methods) from the Person class

attr_accessor :age

  def initialize
    @name = name
    @hair_color = hair_color
    @weight = weight
    @height = height
    @age = 0
  end

  def speak #removing the method from the class
    nil
  end

  def grow(inches) #adding a new method to the class
    @height += inches
    @age += 0.2
  end
  def walk(steps)
    if age < 0.5
      "I would roll #{steps}"
    elsif age < 0.8
      "I would crawl #{steps}"
    else
      "I would walk #{steps}"
    end
  end
end
