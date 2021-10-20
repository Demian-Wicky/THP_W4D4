class Board
  attr_accessor :boardcases

  def initialize
    create_boardcases
  end

  def create_boardcases
    @boardcases = []
    9.times do |i|
      boardcase = Boardcase.new("·")
      @boardcases << boardcase
    end
  end

  def show
    puts"
    ▓▓▓ A ▓ B ▓ C ▓▓▓
    ▓ ╔═══╦═══╦═══╗ ▓ 
    1 ║ #{self.boardcases[0].value} ║ #{self.boardcases[3].value} ║ #{self.boardcases[6].value} ║ ▓
    ▓ ╠═══╬═══╬═══╣ ▓
    2 ║ #{self.boardcases[1].value} ║ #{self.boardcases[4].value} ║ #{self.boardcases[7].value} ║ ▓
    ▓ ╠═══╬═══╬═══╣ ▓
    3 ║ #{self.boardcases[2].value} ║ #{self.boardcases[5].value} ║ #{self.boardcases[8].value} ║ ▓
    ▓ ╚═══╩═══╩═══╝ ▓
    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
    "
  end

  def is_full?
    counter = 0
    @boardcases.each do |boardcase|
      if boardcase.value == "X" || boardcase.value == "O"
        counter += 1
      end
    end
    if counter == 9
      return true
    else
      return false
    end
  end

  def victory_finder
    winning_lists_idxs = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
    winning_lists_idxs.each_with_index do |list_idxs, idx|
      check = ""
      check = self.boardcases[list_idxs[0]].value + self.boardcases[list_idxs[1]].value + self.boardcases[list_idxs[2]].value
      if check != "XXX" && check != "OOO"
        return false
      else
        return true
      end
    end
  end

  
end