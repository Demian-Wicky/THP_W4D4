class Game 
  attr_accessor :players, :boardcases, :turn_counter

  def initialize
    #intro
    @players = [] # on initialise un array vide de joueurs
    create_players # on créé les joueurs avec la méthode create_players en dessous
    @boardcases = [] # on initialise un array vide qui va contenir les cases
    9.times do # on génère 9 cases puis
      @boardcases << Boardcase.new  # on les injecte dans l'array
    end
    @turn_counter = 0 # on initialise un compteur de tours qui pourra augmenter avec la méthode plus_one_turn en dessous
  end

  def create_players # créé les deux joueurs du Game
    puts "Joueur 1, quel est ton nom ? (Tu prendra les X)"
    print "> "
    name = gets.chomp
    player1 = Player.new(name, "X")
    @players << player1
    puts "Joueur 2, quel est ton nom ? (Tu prendra les O)"
    print "> "
    name = gets.chomp
    player2 = Player.new(name, "O")
    @players << player2
  end

  def plus_one_turn # incrémente de 1 le compteur de tours
    @turn_counter += 1
  end

  def victory? # détecte si il y a une victoire

  end


end