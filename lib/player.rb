class Player
  attr_accessor :name, :pawn_type, :victory_counter ## :pawn_type = X or O

  def initialize(name, pawn_type)
    @name = name.to_s
    @pawn_type = pawn_type.to_s
    @victory_counter = 0
  end

  def plus_one_victory
    @victory_counter += 1
  end
  # def to_s
  #   puts "#{@name}, #{@pawn_type}, #{@victory_counter}"
  # end

  # def plays(input) # ex: input = B3
  #   # @boardcases[input].value = self.pawn_type
  # end

end