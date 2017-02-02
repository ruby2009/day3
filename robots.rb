class Robot

attr_accessor :name, :height

def initialize(name, height = 10)
  @name=name
  @height=height
end

def say_hi
  puts "Hi"
end

def say_name
  "My name is #{name}"
end
end

class BendingUnit < Robot

def bend(object_to_bend)
  "Bend #{object_to_bend}"
end
end

class ActorUnit < Robot

  def change_name(new_name)
    @name=new_name
  end
end


our_class = %w(Rob David Nancy Kalea Laura Dave Demetra Kendrick Phil Ben Michael Miguel Chris)

student_bots = []
our_class.each do |robot|
  student_bots << Robot.new(robot)
end

puts student_bots.inspect


new_bots = our_class.collect{|x|Robot.new(x)}
puts new_bots.inspect

robot_class_options = [Robot, BendingUnit, ActorUnit]

random_assignments = our_class.map{|x|(robot_class_options.sample).new(x)}
puts random_assignments.inspect
