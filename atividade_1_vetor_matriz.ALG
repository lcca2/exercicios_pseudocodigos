Algoritmo "Atividade 1 Vetor(matriz)"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/11/2024
var
matriz: vetor[1..3, 1..3] de inteiro
i, j, soma: inteiro

inicio

soma <- 0

   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         escreva("Digite o elemento [", i, "][", j, "]: ")
         leia(matriz[i, j])
      fimpara
   fimpara


   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         soma <- soma + matriz[i, j]
      fimpara
   fimpara

    escreval("A soma dos elementos da matriz é: ",soma)
   
   
   
   
fimalgoritmo