Algoritmo "Atividade 1 utilizando função "
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/11/2024
Var
// Seção de Declarações das variáveis 
resultado: real
n1,n2: real

   funcao soma(num1, num2: real ): real
      var
      resultado: real

      inicio

      resultado <- (num1+num2)
      escreval("A soma dos valores informados é: ",resultado:2:2)
   fimfuncao


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreval("## Soma de dois valores ##")
escreval("Informe o primeiro valor: ")
leia(n1)
escreval("Informe o segundo valor: ")
leia(n2)
escreval

resultado <- soma(n1,n2)








Fimalgoritmo