class Show

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

  def rules
    puts "Le but du jeu est d’aligner avant son adversaire 3 symboles identiques".magenta
    puts "(horizontalement, verticalement ou en diagonale)".blue
    puts
  end

  def board
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
end