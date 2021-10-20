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
    puts "Le but du jeu est d’aligner 3 symboles identiques avant son adversaire.".magenta
    puts "(horizontalement, verticalement ou en diagonale)".blue
    puts
    puts "Appuie sur [Entrée] pour jouer."
  end


end