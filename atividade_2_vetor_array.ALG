Algoritmo "Atividade 2 vetor(array)"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/11/2024
Var
// Seção de Declarações das variáveis 
sem: vetor[1..4] de inteiro
nome: caracter
gastos: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("## Soma de gastos mensais ##")
escreval
escreval("Digite seu nome: ")
leia(nome)
escreval
escreva("Digite o valor de gastos da primeira semana: R$")
leia(sem[1])
escreva("Digite o valor de gastos da segunda semana: R$")
leia(sem[2])
escreva("Digite o valor de gastos da terceira semana: R$")
leia(sem[3])
escreva("Digite o valor de gastos da quarta semana: R$")
leia(sem[4])

gastos <- sem[1]+sem[2]+sem[3]+sem[4]

escreval("Ao total você gastou no mes: R$",gastos:2:2)













Fimalgoritmo