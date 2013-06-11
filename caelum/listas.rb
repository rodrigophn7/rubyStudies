class Franquia

  def initialize
    @restaurantes = []
  end

  def adiciona(restaurante)
    @restaurantes << restaurante
  end

  def mostra
    @restaurantes.each do |r|
      puts r.nome
    end  
  end

  def relatorio
    @restaurantes.each do |r|
      yield r
    end
  end

end

class Restaurante
  attr_accessor :nome
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de Chao"

franquia = Franquia.new
franquia.adiciona restaurante_um
franquia.adiciona restaurante_dois

franquia.mostra

franquia.relatorio do |r|
  puts "Restaurante cadastrado: #{r.nome}"
end
