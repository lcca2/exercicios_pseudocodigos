Algoritmo "Atividade 1 com fun��o pagamento e escolha"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/11/2024
// Se��o de Declara��es das vari�veis


var
opcao, optotal, oppagamento, preco, quantidade, parcelamento: inteiro
total, subtotal: real
op, brinquedo: caracter

// Fun��o de escolha do brinquedo
   funcao Opcao(opcao: inteiro) : inteiro
   var
   preco: inteiro
   brinquedo: caracter
   Inicio
      se((opcao <= 0) ou (opcao > 7))entao
         escreval("Voc� escolheu uma op��o inv�lida!")
         escreval("Realize a compra novamente!")
      senao
         escolha(opcao)
            caso 1
               brinquedo <- "Carrinho a controle remoto super m�quina"
               preco <- 500
            caso 2
               brinquedo <- "Boneca Barbie"
               preco <- 450
            caso 3
               brinquedo <- "Boneco Cobra comandos em a��o"
               preco <- 300
            caso 4
               brinquedo <- "Boneco fof�o"
               preco <- 480
            caso 5
               brinquedo <- "Videogame Atari"
               preco <- 820
            caso 6
               brinquedo <- "Jogo super m�rio"
               preco <- 100
            caso 7
               brinquedo <- "Bicicleta caloi cross extra"
               preco <- 5000
         fimescolha
      fimse
      retorne opcao
   fimfuncao

// Fun��o de pagamento
  funcao Oppag(oppag: inteiro): real
   var
      total, subtotal, preco: real
      quantidade, parcelamento: inteiro
   Inicio
      se((oppag <= 0) ou (oppag > 7)) entao
         escreval("Voc� escolheu uma op��o de pagamento inv�lida!")
      senao
         escolha(oppag)
            escolha(oppagamento)
           caso 1
           escreval("Sua compra teve um desconto de 5%")
           subtotal <- preco*quantidade
           total <- subtotal-(subtotal*0.05)
           caso 2
           escreval("Sem altera��o no valor.")
           subtotal <- (preco*quantidade)
           total <- subtotal
           caso 3
           escreval("Sua compra teve um acr�simo de 5% no valor.")
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.05)
           caso 4
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.05)
           parcelamento <- total/2
           escreval("Sua compra teve um acr�scimo de 5%, parcelado em 2x de: R$",parcelamento:2:2)
           caso 5
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.08)
           parcelamento <- total/3
           escreval("Sua compra teve um acr�scimo de 8%, parcelado em 3x de: R$",parcelamento:2:2)
           caso 6
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.08)
           parcelamento <- total/4
           escreval("Sua compra teve um acr�scimo de 8%, parcelado em 4x de: R$",parcelamento:2:2)
           caso 7
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.1)
           parcelamento <- total/5
           escreval("Sua compra teve um acr�scimo de 10%, parcelado em 5x de: R$",parcelamento:2:2)
         fimescolha
      fimse
      retorne total
fimfuncao


Inicio

   preco <- 0
   quantidade <- 0
   parcelamento <- 0

   op <- "S"
   quantidade <- 0
 enquanto ((op = "S")ou(op = "s")) faca
   // Chamada da fun��o de escolha do brinquedo
   escreval("1 - Carrinho a controle remoto super m�quina - R$ 500,00")
   escreval("2 - Boneca Barbie - R$ 450,00")
   escreval("3 - Boneco Cobra comandos em a��o - R$ 300,00")
   escreval("4 - Boneco fof�o - R$ 480,00")
   escreval("5 - Videogame Atari - R$ 820,00")
   escreval("6 - Jogo super m�rio - R$ 100,00")
   escreval("7 - Bicicleta caloi cross extra - R$ 5.000,00")
   escreval("Qual brinquedo deseja comprar?: ")
   leia(opcao)
   

   
   escreval("Voc� escolheu: ",brinquedo,".")
   escreval("Deseja continuar comprando? S/N: ")
   leia(op)

  fimenquanto
   



   // Chamada da fun��o de pagamento
  escreval("------------------------------------")
  escreval("Op��es de pagamento")
  escreval("1 - A vista em dinheiro ou PIX, 5% de desconto")
  escreval("2 - No cart�o de d�bito, mesmo pre�o")
  escreval("3 - No cart�o de cr�dito em 1x, acr�scimo de 5%")
  escreval("4 - No cart�o de cr�dito em 2x, acr�scimo de 5%")
  escreval("5 - No cart�o de cr�dito em 3x, acr�scimo de 8%")
  escreval("6 - No cart�o de cr�dito em 4x, acr�scimo de 8%")
  escreval("7 - No cart�o de cr�dito em 5x, acr�scimo de 10%")
  leia(oppagamento)
  leia(oppagamento)
  total <- Oppag (oppagamento)

   // Exibi��o do total
   escreval("O total a pagar �: R$",total)


Fimalgoritmo