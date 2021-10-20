class Game
  attr_accessor :players , :board, :boardcases

  def initialize
    create_players
    create_board
    @turn = 1
  end

  def create_players
    player1 = Player.new("Demian", "X")
    player2 = Player.new("Marc", "O")
    @players = [player1, player2]
  end

  def create_board
    @board = Board.new
  end

  def current_player_plays
    positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    current_player = @players[@turn%2]
    puts "C'est à #{current_player.name} de jouer.".yellow
    puts "Quelle case veux-tu jouer ?"
    puts "> "
    input = gets.chomp.to_s.upcase
    if valid_input_check(input) == true
      @board.boardcases[positions.index(input)].value = current_player.pawn_type #https://apidock.com/ruby/Array/find_index
    end
  end

  def valid_input_check(input)
    positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    if (positions.include? input) && (@board.boardcases[positions.index(input)].value == "·")
      puts "très bon choix".green
      return true
    else
      puts  "#{input} est un choix non valide, recommence.".red
      current_player_plays
      return false
    end
  end


  def perform
    while @board.is_full? == false
      system 'clear'
      @board.show
      puts "ⓘ tour n° #{@turn} / tour de #{@players[@turn%2].name}".magenta
      puts "ⓘ plateau plein ? #{@board.is_full?}".magenta
      puts "ⓘ victoires #{@players[0].name}: #{@players[0].victory_counter}".magenta
      puts "ⓘ victoires #{@players[1].name}: #{@players[1].victory_counter}".magenta
      current_player_plays
      @turn += 1
    end
  end

end