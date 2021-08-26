class Game 
  attr_accessor :players, :board

  def initialize
    intro
    @players = []
    @board = Board.new
    create_players
  end

  def intro
    puts
    puts "     Bienvenue dans".magenta + " ☆"
    puts "                         ☆"
    puts "☆ "+"██████".magenta+"╗ ".cyan+"██".blue+"╗  ".cyan+"██".blue+"╗ ".cyan+"██████".magenta+"╗".cyan
    puts " ██".magenta+"╔═══".cyan+"██".magenta+"╗╚".cyan+"██".blue+"╗".cyan+"██".blue+"╔╝".cyan+"██".magenta+"╔═══".cyan+"██".magenta+"╗".cyan
    puts " ██".magenta+"║   ".cyan+"██".magenta+"║ ╚".cyan+"███".blue+"╔╝ ".cyan+"██".magenta+"║   ".cyan+"██".magenta+"║".cyan
    puts " ██".magenta+"║".cyan+"☆  "+"██".magenta+"║ ".cyan+"██".blue+"╔".cyan+"██".blue+"╗ ".cyan+"██".magenta+"║   ".cyan+"██".magenta+"║".cyan
    puts " ╚".cyan+"██████".magenta+"╔╝".cyan+"██".blue+"╔╝ ".cyan+"██".blue+"╗╚".cyan+"██████".magenta+"╔╝".cyan + " ☆"
    puts " ☆"+"╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ".cyan  + "v1.0".blue
    puts "                ☆" 
    puts
  end

  def create_players
    puts "Joueur 1, quel est ton nom ? (Tu prendra les X)"
    print "> "
    name = gets.chomp
    player1 = Player.new(name, "X")
    @players << player1
    puts "Joueur 2, quel est ton nom ? (Tu prendra les 0)"
    print "> "
    name = gets.chomp
    player2 = Player.new(name, "O")
    @players << player2
  end



end