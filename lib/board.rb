class Board
  attr_accessor :boardcases

  def initialize
    a1 = Boardcase.new("A1", "·")
    a2 = Boardcase.new("A2", "·")
    a3 = Boardcase.new("A3", "·")
    b1 = Boardcase.new("B1", "·")
    b2 = Boardcase.new("B2", "·")
    b3 = Boardcase.new("B3", "·")
    c1 = Boardcase.new("C1", "·")
    c2 = Boardcase.new("C2", "·")
    c3 = Boardcase.new("C3", "·")
    @boardcases = [a1, a2, a3, b1, b2, b3, c1, c2, c3]
  end

  def show
    puts"
      ▓▓▓ A ▓ B ▓ C ▓▓▓
      ▓ ╔═══╦═══╦═══╗ ▓ 
      1 ║ #{@boardcases[0].value} ║ #{@boardcases[1].value} ║ #{@boardcases[2].value} ║ ▓
      ▓ ╠═══╬═══╬═══╣ ▓
      2 ║ #{@boardcases[3].value} ║ #{@boardcases[4].value} ║ #{@boardcases[5].value} ║ ▓
      ▓ ╠═══╬═══╬═══╣ ▓
      3 ║ #{@boardcases[6].value} ║ #{@boardcases[7].value} ║ #{@boardcases[8].value} ║ ▓
      ▓ ╚═══╩═══╩═══╝ ▓
      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
      "
  end

  def full?
    if @boardcases[0].value != "·" && @boardcases[1].value != "·" && @boardcases[2].value != "·" && @boardcases[3].value != "·" && @boardcases[4].value != "·" && @boardcases[5].value != "·" && @boardcases[6].value != "·" && @boardcases[7].value != "·" && @boardcases[8].value
      return true
    else
      return false
    end
  end


  def victory?
    if @boardcases[0].value == "O" && @boardcases[1].value == "O" && @boardcases[2].value == "O"
      return true
    elsif @boardcases[3].value == "O" && @boardcases[4].value == "O" && @boardcases[5].value == "O"
      return true
    elsif @boardcases[6].value == "O" && @boardcases[7].value == "O" && @boardcases[8].value == "O"
      return true
    elsif @boardcases[0].value == "O" && @boardcases[3].value == "O" && @boardcases[6].value == "O"
      return true
    elsif @boardcases[1].value == "O" && @boardcases[4].value == "O" && @boardcases[7].value == "O"
      return true
    elsif @boardcases[2].value == "O" && @boardcases[5].value == "O" && @boardcases[8].value == "O"
      return true
    elsif @boardcases[0].value == "O" && @boardcases[4].value == "O" && @boardcases[8].value == "O"
      return true
    elsif @boardcases[2].value == "O" && @boardcases[4].value == "O" && @boardcases[6].value == "O"
      return true
    #############################################################################
    if @boardcases[0].value == "X" && @boardcases[1].value == "X" && @boardcases[2].value == "X"
      return true
    elsif @boardcases[3].value == "X" && @boardcases[4].value == "X" && @boardcases[5].value == "X"
      return true
    elsif @boardcases[6].value == "X" && @boardcases[7].value == "X" && @boardcases[8].value == "X"
      return true
    elsif @boardcases[0].value == "X" && @boardcases[3].value == "X" && @boardcases[6].value == "X"
      return true
    elsif @boardcases[1].value == "X" && @boardcases[4].value == "X" && @boardcases[7].value == "X"
      return true
    elsif @boardcases[2].value == "X" && @boardcases[5].value == "X" && @boardcases[8].value == "X"
      return true
    elsif @boardcases[0].value == "X" && @boardcases[4].value == "X" && @boardcases[8].value == "X"
      return true
    elsif @boardcases[2].value == "X" && @boardcases[4].value == "X" && @boardcases[6].value == "X"
      return true
    #############################################################################
    else
      return false
    end

  end

end
end