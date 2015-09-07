class MyClass
  def setName(str)
    @name = str
  end

  def getName()
    return @name
  end
end

obj1 = MyClass.new()
obj2 = MyClass.new()
obj1.setName("Tanaka")
puts obj1.getName()
puts obj2.getName()
