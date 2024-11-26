Algoritmo "Atividade 1 vetor(array)"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/11/2024
Var
// Seção de Declarações das variáveis 
nota: vetor[1..4] de inteiro
turma, media: real
nome: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreval("Digite o nome do aluno: ")
leia(nome)
escreval("Digite a turma: ")
leia(turma)
escreval("Digite as notas das provas")
escreval
escreva("Primeira nota: ")
leia(nota[1])
escreva("Segunda nota: ")
leia(nota[2])
escreva("Terceira nota: ")
leia(nota[3])
escreva("Quarta nota: ")
leia(nota[4])

media <- (nota[1]+nota[2]+nota[3]+nota[4])/4

escreval
escreval("Média final: ",media:2:2)

 escolha(media)
 caso  7 ate 10
 escreval("Aprovado")
 caso 5 ate 6
 escreval("Recuperação")
 caso 0 ate 4
 escreval("Reprovado")
 outrocaso
 escreval("Média inválida")
 fimescolha





























Fimalgoritmo