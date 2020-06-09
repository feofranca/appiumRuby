cadastro = Cadastro.new
tutorial = Tutorial.new

Dado('que eu esteja na tela de login') do
   tutorial.pular_tutorial()
end

Quando('eu não possuir conta no app') do
    cadastro.verificarUsuarioSemConta()
end

Então('eu quero me cadastrar') do
  cadastro.cadastrar()
  cadastro.verificacaoCodigo()
end

Então('eu quero me cadastrar sem utilizar código') do
  cadastro.cadastrar()
  cadastro.pularCodigo()
end

E ('ser direcionado a tela de categorias') do
  cadastro.verificarHome()
end

E('leia o tutorial') do
  tutorial.ler_tutorial()
end
