algoritmo "Sorveteria"
//Descri��o: Sistema para realizar compras de picol�s
var
total, subtotal, parcelamento, totalcaixa: real
quantidade, opcao, quanttotal, oppagamento, opsistema: inteiro
picole, op,opmenupri: caracter
inicio
// Sistema para venda de picoles
opmenupri <- "S"
enquanto (opmenupri = "S") ou (opmenupri = "s") faca
limpatela
   escreval("## Sorveteria do sor Miguel ##")
   escreval("## Menu do sistema ##")
   escreval("1 - Abrir caixa para vendas")
   escreval("2 - Fechar caixa")
   escreva("Selecione uma op��o: ")
   leia(opsistema)

   se (opsistema = 1) entao

      op <- "S"
      enquanto ((op = "S")ou(op = "s")) faca

      limpatela
      escreval ("### Menu de saboras de Picol�s ###")
      escreval ("1- Picol� de uva R$ 1,00")
      escreval("2- picol� de laranja R$ 1,25")
      escreval("3- picol� de milho R$ 1,50")
      escreval("4- picol� de coco queimado R$ 1,80")
      escreval("5- picol� de tamarindo R$ 2,00")
      escreva("Selecione umas das op��es: ")
      leia (opcao)
      escreval

      se((opcao <= 0) ou (opcao > 5))entao
         escreval("Voc� escolheu uma op��o inv�lida!")
         escreval("Realize a compra novamente!")
      senao
         escreva("Quantos picoles voc� deseja compra: ")
         leia (quantidade)
         quanttotal <- quanttotal + quantidade
         escreval("#####################################")
         se (opcao = 1) entao
            subtotal <- quantidade*1.00
            picole <- "Uva"
            senao
               se (opcao = 2) entao
                  subtotal <- quantidade*1.25
                  picole <- "Laranja"
               senao
                  se (opcao = 3) entao
                     subtotal <- quantidade*1.50
                     picole <- "Milho"
                  senao
                    se(opcao = 4)entao
                    subtotal <- quantidade * 1.80
                    picole <- "Coco queimado"
                    senao
                       se(opcao = 5)entao
                       subtotal <- quantidade * 2.00
                       picole <- "Tamarindo"
                       fimse
                    fimse
                  fimse
               fimse
         fimse
         escreval ("Voc� comprou ",quantidade," unidade(s) do picol� de ",picole)

         escreval (" Voc� vai pagar R$ ",subtotal:2:2)

         total <- total + subtotal
         escreval("Valor total da sua compra at� o momento: R$ ",total:2:2)
      fimse
                 escreval("################################")
                 escreval("Deseja continuar comprando S/N: ")
                 leia(op)
      fimenquanto

      //Op��es de pagamento no sistema
      oppagamento <- 0
      enquanto ((oppagamento <= 0)ou(oppagamento > 6)) faca
         escreval("-------------------------------")
         escreval("## Menu de forma de pagamento ##")
         escreval("1 - A vista em dinheiro ou PIX, 10% de desconto")
         escreval("2 - No cart�o de d�bito, 5% de desconto")
         escreval("3 - No cart�o de cr�dito 1x, mesmo valor")
         escreval("4 - No cart�o de cr�dito em 2x, acr�scimo de 5%")
         escreval("5 - No cart�o de cr�dito em 3x, acr�scimo de 10%")
         escreval("6 - No cart�o de cr�dito em 4x, acr�scimo de 15%")
         escreva("Escolha uma op��o: ")
         leia(oppagamento)
         escreval("-----------------------------")
         escreval("Quantidade total de picol�s comprados: ", quanttotal, " unidades.")
          //vari�vel de receber o valor de 0 para uma pr�xima compra
          quanttotal <- 0
         se((opcao <= 0) ou (opcao > 6))entao
         escreval("Voc� escolheu uma op��o de pagamento inv�lida!")
         senao
            escolha (oppagamento)
              caso 1
              total <- total-(total * 0.1)
              escreval("Sua compra teve um desconto de 10%")
              caso 2
              total <- total-(total * 0.05)
              escreval("Sua compra teve um desconto de 5%")
              caso 3
              total <- total
              caso 4
              total <- total+(total * 0.05)
              parcelamento <- total / 2
              escreval("Sua compra teve um acr�scimo de 5%, parcelado em 2x de R$ ",parcelamento:2:2)
              caso 5
              total <- total+(total * 0.1)
              parcelamento <- total / 3
              escreval("Sua compra teve um acr�scimo de 10%, parcelado em 3x de R$ ",parcelamento:2:2)
              caso 6
              total <- total+(total * 0.15)
              parcelamento <- total / 4
              escreval("Sua compra teve um acr�scimo de 15%, parcelado em 4x de R$ ",parcelamento:2:2)
              outrocaso
              escreval("Voc� escolheu uma op��o de forma de pagamento errada!")

            fimescolha
          fimse

          totalcaixa <- totalcaixa + total
         escreval (" Valor total da sua compra R$ ",total:2:2)
         escreval("-----------------------------")
         //vari�vel de receber o valor de 0 para uma pr�xima compra
         total <- 0
      fimenquanto
                escreval
                escreval("Obrigado por comprar na nossa loja, volte sempre!")
   senao
   se (opsistema = 2) entao
        escreval("##########################################")
        escreval("### Fechamento do caixa  ###")
        escreval("Faturamento total do caixa: R$ ",totalcaixa:2:2)
        senao
        escreval("Voc� escolheu uma op��o errada!")
        fimse
fimse
   escreva("Deseja voltar ao menu principal do sistema S/N: ")
   leia(opmenupri)
fimenquanto
fimalgoritmo
