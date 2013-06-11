class Turma 

  def initialize(*nomes)
    @nomes = nomes
  end
  
  def each()
    yeld(
  end
end

fj91 = Turma.new("Guilherme", "Paulo", "Paniz")

fj91.each do |nome|
  puts nome
end
