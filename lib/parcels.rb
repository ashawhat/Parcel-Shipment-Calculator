
class Parcel
  def initialize (weight, height, width, length)
    @weight = weight
    @height = height
    @width = width
    @length = length
  end

  def volume
    @height * @width * @length
  end
  def cost_to_ship
    cost = volume * @weight
    if cost <= 50
       10.00
    else cost > 50
       25.00
    end
  end
end

boyfriend_package = Parcel.new(7, 2, 2, 2)
p boyfriend_package.cost_to_ship
