Algoritmo "Atividade 1 utilizando fun��o "
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/11/2024
Var
// Se��o de Declara��es das vari�veis 
resultado: real
n1,n2: real

   funcao soma(num1, num2: real ): real
      var
      resultado: real

      inicio

      resultado <- (num1+num2)
      escreval("A soma dos valores informados �: ",resultado:2:2)
   fimfuncao


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

escreval("## Soma de dois valores ##")
escreval("Informe o primeiro valor: ")
leia(n1)
escreval("Informe o segundo valor: ")
leia(n2)
escreval

resultado <- soma(n1,n2)








Fimalgoritmo