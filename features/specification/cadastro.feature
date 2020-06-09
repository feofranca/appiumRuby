#language: pt

Funcionalidade: Cadastro de novos usuarios

@tc1
Cenário: Cadastrar usuário - Pulando tutorial
Dado que eu esteja na tela de login
Quando eu não possuir conta no app
Então eu quero me cadastrar
E ser direcionado a tela de categorias

@tc2
Cenário: Cadastrar usuário - Lendo tutorial e pulando código
Dado que eu abra o app
E leia o tutorial
Quando eu não possuir conta no app
Então eu quero me cadastrar sem utilizar código
E ser direcionado a tela de categorias
