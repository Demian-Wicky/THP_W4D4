class Game
  attr_accessor :players , :board, :boardcases

  def initialize
    create_players
    create_board
    @turn = -1
    @ongoing = true
  end

  def create_players
    player1 = Player.new(nil, "X")
    player2 = Player.new(nil, "O")
    @players = [player1, player2]
  end

  def define_players_names
    puts "Joueur1, quel est tom nom ? Tu prendra les X."
    print "> "
    name1 = gets.chomp.to_s
    @players[0].name = name1
    system 'clear'
    puts "Joueur2, quel est tom nom ? Tu prendra les O."
    print "> "
    name2 = gets.chomp.to_s
    @players[1].name = name2
    system 'clear'
  end

  def create_board
    @board = Board.new
  end

  def current_player_plays
    positions = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    current_player = @players[@turn%2]
    puts "C'est à #{current_player.name} de jouer.".yellow
    puts "Quelle case veux-tu jouer ?"
    print "> "
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

  def status
    puts "ⓘ ongoing : #{@ongoing}".magenta
    puts "ⓘ tour n° #{@turn} / tour de #{@players[@turn%2].name}".magenta
    puts "ⓘ plateau plein ? #{@board.is_full?}".magenta
    puts "ⓘ victoire détectée ? #{@board.victory?}".magenta
    puts "ⓘ victoires #{@players[0].name} : #{@players[0].victory_counter}".magenta
    puts "ⓘ victoires #{@players[1].name} : #{@players[1].victory_counter}".magenta
  end


  def perform
    
    Show.new.intro
    gets
    system 'clear'
    define_players_names

    while @ongoing == true

      @turn += 1
      @board.show
      status
      current_player_plays
      system 'clear'

      if @board.victory? == true # if there is a victory
        @board.show
        puts "#{@players[@turn%2].name} a gagné !!!"
        @players[@turn%2].victory_counter += 1
        status
        @board.reset
        gets
        system 'clear'
      end

      if @board.is_full? == true # if the board is full and there is no victory
        @board.show
        puts "pas de vainqueur !!!"
        status
        @board.reset
        gets
        system 'clear'
      end

    end
  end


end