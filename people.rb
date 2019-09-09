class People
  
  attr_accessor:name
  attr_accessor:age
  
  def initialize(name,age)
    self.name = name
    self.age = age
  end
  
  def data
    return "名前は#{self.name}で年齢は#{self.age}です。"
  end
  
  def self.info
    puts "私はPeopleクラスです"
  end
end

#childpeople
class ChildPeople < People
  
  def initialize(name,age,grade)
    super(name:name,age:age)
    self.grade = grade
  end
  
  def data
    return "名前は#{self.name}で年齢は#{self.age}で学年は#{self.grade}です。"
  end
end

people = People.new("山田",19)
puts people.data

child = ChildPeople.new("柏木",45,"高三")
puts child.data