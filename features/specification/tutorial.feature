#language: pt

Funcionalidade: Tutorial

@tc3
Cenário: Tutorial para novos usuários
Dado que eu abra o app
Quando não estiver com login ativo
Então eu quero ler o tutorial

@tc4
Cenário: Pular tutorial
Dado que eu abra o app
Quando não estiver com login ativo
Então eu não quero ler o tutorial
