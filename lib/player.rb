class Player
  attr_accessor :name, :pawn_type, :victory_counter ## :pawn_type = X or O

  def initialize(name, pawn_type)
    @name = name.to_s
    @pawn_type = pawn_type.to_s
    @victory_counter = 0
  end

  def to_s
    puts "#{@name}, #{@pawn_type}, #{@victory_counter}"
  end

end