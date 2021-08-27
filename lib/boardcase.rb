class Boardcase
  attr_accessor :value

  def initialize # une nouvelle case est initialisée avec une valeur " "
    @value = " "
  end

  def is_free? # retourne vrai si la case est vide, sinon retourne faux
    if @value = " "
      return true 
    else
      return false
    end
  end

end