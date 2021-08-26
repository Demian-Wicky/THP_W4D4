class Boardcase
  attr_accessor :position, :value

  def initialize(position, value) #position = A1...C3 | value = " ", "X" or "O"
    @position = position
    @value = value
  end

end