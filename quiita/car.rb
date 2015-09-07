class Car
  def dispClassname
    print("Car class\n")
  end

  def dispString(str, "\n")
    print(str)
  end
end

car = Car.new
car.dispClassname
car.dispString("crown")
