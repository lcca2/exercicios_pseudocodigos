Algoritmo "Atividade 1 com função pagamento e escolha"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/11/2024
// Seção de Declarações das variáveis


var
opcao, optotal, oppagamento, preco, quantidade, parcelamento: inteiro
total, subtotal: real
op, brinquedo: caracter

// Função de escolha do brinquedo
   funcao Opcao(opcao: inteiro) : inteiro
   var
   preco: inteiro
   brinquedo: caracter
   Inicio
      se((opcao <= 0) ou (opcao > 7))entao
         escreval("Você escolheu uma opção inválida!")
         escreval("Realize a compra novamente!")
      senao
         escolha(opcao)
            caso 1
               brinquedo <- "Carrinho a controle remoto super máquina"
               preco <- 500
            caso 2
               brinquedo <- "Boneca Barbie"
               preco <- 450
            caso 3
               brinquedo <- "Boneco Cobra comandos em ação"
               preco <- 300
            caso 4
               brinquedo <- "Boneco fofão"
               preco <- 480
            caso 5
               brinquedo <- "Videogame Atari"
               preco <- 820
            caso 6
               brinquedo <- "Jogo super mário"
               preco <- 100
            caso 7
               brinquedo <- "Bicicleta caloi cross extra"
               preco <- 5000
         fimescolha
      fimse
      retorne opcao
   fimfuncao

// Função de pagamento
  funcao Oppag(oppag: inteiro): real
   var
      total, subtotal, preco: real
      quantidade, parcelamento: inteiro
   Inicio
      se((oppag <= 0) ou (oppag > 7)) entao
         escreval("Você escolheu uma opção de pagamento inválida!")
      senao
         escolha(oppag)
            escolha(oppagamento)
           caso 1
           escreval("Sua compra teve um desconto de 5%")
           subtotal <- preco*quantidade
           total <- subtotal-(subtotal*0.05)
           caso 2
           escreval("Sem alteração no valor.")
           subtotal <- (preco*quantidade)
           total <- subtotal
           caso 3
           escreval("Sua compra teve um acrésimo de 5% no valor.")
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.05)
           caso 4
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.05)
           parcelamento <- total/2
           escreval("Sua compra teve um acréscimo de 5%, parcelado em 2x de: R$",parcelamento:2:2)
           caso 5
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.08)
           parcelamento <- total/3
           escreval("Sua compra teve um acréscimo de 8%, parcelado em 3x de: R$",parcelamento:2:2)
           caso 6
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.08)
           parcelamento <- total/4
           escreval("Sua compra teve um acréscimo de 8%, parcelado em 4x de: R$",parcelamento:2:2)
           caso 7
           subtotal <- preco*quantidade
           total <- subtotal + (subtotal*0.1)
           parcelamento <- total/5
           escreval("Sua compra teve um acréscimo de 10%, parcelado em 5x de: R$",parcelamento:2:2)
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
   // Chamada da função de escolha do brinquedo
   escreval("1 - Carrinho a controle remoto super máquina - R$ 500,00")
   escreval("2 - Boneca Barbie - R$ 450,00")
   escreval("3 - Boneco Cobra comandos em ação - R$ 300,00")
   escreval("4 - Boneco fofão - R$ 480,00")
   escreval("5 - Videogame Atari - R$ 820,00")
   escreval("6 - Jogo super mário - R$ 100,00")
   escreval("7 - Bicicleta caloi cross extra - R$ 5.000,00")
   escreval("Qual brinquedo deseja comprar?: ")
   leia(opcao)
   

   
   escreval("Você escolheu: ",brinquedo,".")
   escreval("Deseja continuar comprando? S/N: ")
   leia(op)

  fimenquanto
   



   // Chamada da função de pagamento
  escreval("------------------------------------")
  escreval("Opções de pagamento")
  escreval("1 - A vista em dinheiro ou PIX, 5% de desconto")
  escreval("2 - No cartão de débito, mesmo preço")
  escreval("3 - No cartão de crédito em 1x, acréscimo de 5%")
  escreval("4 - No cartão de crédito em 2x, acréscimo de 5%")
  escreval("5 - No cartão de crédito em 3x, acréscimo de 8%")
  escreval("6 - No cartão de crédito em 4x, acréscimo de 8%")
  escreval("7 - No cartão de crédito em 5x, acréscimo de 10%")
  leia(oppagamento)
  leia(oppagamento)
  total <- Oppag (oppagamento)

   // Exibição do total
   escreval("O total a pagar é: R$",total)


Fimalgoritmo