Algoritmo "Atividade 1 sem função"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/11/2024
Var
// Seção de Declarações das variáveis 
opcao, optotal, oppagamento, quantidade: inteiro
total, subtotal, parcelamento, preco: real
op, brinquedo: caracter


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("## Loja de brinquedos vintage ##")
escreval
op <- "S"
quantidade <- 0
enquanto ((op = "S")ou(op = "s")) faca

 escreval(" Catálogo de brinquedos ")
 escreval("1 - Carrinho a controle remoto super máquina - R$ 500,00")
 escreval("2 - Boneca Barbie - R$ 450,00")
 escreval("3 - Boneco Cobra comandos em ação - R$ 300,00")
 escreval("4 - Boneco fofão - R$ 480,00")
 escreval("5 - Videogame Atari - R$ 820,00")
 escreval("6 - Jogo super mário - R$ 100,00")
 escreval("7 - Bicicleta caloi cross extra - R$ 5.000,00")
 escreval("Qual brinquedo deseja comprar?: ")
 leia(opcao)
 
            se((opcao <= 0) ou (opcao > 7))entao
              escreval("Você escolheu uma opção inválida!")
              escreval("Realize a compra novamente!")
            senao
               escolha(opcao)
                  caso 1
                  brinquedo <- "Carrinho a controle remoto super máquina"
                  preco <- 500
                  quantidade <- 1
                  caso 2
                  brinquedo <- "Boneca Barbie"
                  preco <- 450
                  quantidade <- 1
                  caso 3
                  brinquedo <- "Boneco Cobra comandos em ação"
                  preco <- 300
                  quantidade <- 1
                  caso 4
                  brinquedo <- "Boneco fofão"
                  preco <- 480
                  quantidade <- 1
                  caso 5
                  brinquedo <- "Videogame Atari"
                  preco <- 820
                  quantidade <- 1
                  caso 6
                  brinquedo <- "Jogo super mário"
                  preco <- 100
                  quantidade <- 1
                  caso 7
                  brinquedo <- "Bicicleta caloi cross extra"
                  preco <- 5000
                  quantidade <- 1
                fimescolha
             fimse

escreval("Você escolheu: ",brinquedo,".")
escreval("Deseja continuar comprando? S/N: ")
leia(op)
brinquedo <- brinquedo
fimenquanto

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

        se((oppagamento <= 0) ou (oppagamento > 7))entao
        escreval("Você escolheu uma opção de pagamento inválida!")
        senao
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

escreval("Você comprou o(s) brinquedo(s): ",brinquedo)
escreval("O valor total da sua compra é: R$",total:2:2)



















Fimalgoritmo