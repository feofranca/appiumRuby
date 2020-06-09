tutorial = Tutorial.new

Dado('que eu abra o app') do

end

Quando('não estiver com login ativo') do
  tutorial.valida_tutorial()
end

Então('eu quero ler o tutorial') do
  tutorial.ler_tutorial()
end

Então('eu não quero ler o tutorial') do
  tutorial.pular_tutorial()
end
