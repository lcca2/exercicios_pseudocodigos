Algoritmo "Caixa Supermercado"
Var
// Seção de Declarações das variáveis 
 opcao, opcaoProduto, quantidade, i, numProdutos, numComprados: inteiro
 total, preco, desconto, valorParcela: real
 nomeProduto, categoria, carrinhoProduto: vetor[1..100] de caractere
 precoProduto, carrinhoPreco: vetor[1..100] de real
 estoqueProduto, carrinhoQuantidade: vetor[1..100] de inteiro
 op, clienteClube, ExibirCategoria: caractere

Inicio
op <- "s"
escolha op
enquanto ((op = "n")ou(op = "N")) faca

escreval("## Supermercado ##")
escreval("1 - Fazer compras na loja")
escreval("2 - Fechar caixa")
escreval("3 - Sair")
escreva("Escolha uma opção: ")
leia(opcao)
escreval
escreval("-------------------------------------- ")

 //cadastro dos produtos
    numProdutos <- 8
    nomeProduto[1] <- "Pão"; categoria[1] <- "Padaria";
    precoProduto[1] <- 5.0;
    estoqueProduto[1] <- 20
    nomeProduto[2] <- "Bolo"; categoria[2] <- "Padaria";
    precoProduto[2] <- 20.0;
    estoqueProduto[2] <- 20
    nomeProduto[3] <- "Pizza Congelada"; categoria[3] <- "Congelados";
    precoProduto[3] <- 15.0;
    estoqueProduto[3] <- 20
    nomeProduto[4] <- "Sorvete"; categoria[4] <- "Congelados";
    precoProduto[4] <- 10.0;
    estoqueProduto[4] <- 20
    nomeProduto[5] <- "Arroz"; categoria[5] <- "Não perecíveis";
    precoProduto[5] <- 8.0;
    estoqueProduto[5] <- 20
    nomeProduto[6] <- "Feijão"; categoria[6] <- "Não perecíveis";
    precoProduto[6] <- 7.0;
    estoqueProduto[6] <- 20
    nomeProduto[7] <- "Shampoo"; categoria[7] <- "Higiene";
    precoProduto[7] <- 12.0;
    estoqueProduto[7] <- 20
    nomeProduto[8] <- "Sabonete"; categoria[8] <- "Higiene";
    precoProduto[8] <- 2.0;
    estoqueProduto[8] <- 20
    
    
    
         enquanto ((op = "s")ou(op = "S")) faca
           se(opcao = 1)entao
            escreval("## Categorias de Produtos ##")
            escreval("1 - Padaria")
            escreval("2 - Congelados")
            escreval("3 - Não perecíveis")
            escreval("4 - Higiene")
            escreval("0 - Voltar ao menu principal")
            escreva("Escolha uma categoria: ")
            leia(opcaoProduto)
   escreval("-------------------------------------- ")
   
   escolha opcaoProduto
    caso 1
     escreval("Padaria: ")
     escreval("1 - ",nomeproduto[1]," R$",precoProduto[1])
     escreval("2 - ",nomeproduto[2]," R$",precoProduto[2])
    caso 2
     escreval("Produtos Congelados: ")
     escreval("3 - ",nomeproduto[3]," R$",precoProduto[3])
     escreval("4 - ",nomeproduto[4]," R$",precoProduto[4])
    caso 3
     escreval("Não perecíveis: ")
     escreval("5 - ",nomeproduto[5]," R$",precoProduto[5])
     escreval("6 - ",nomeproduto[6]," R$",precoProduto[6])
    caso 4
    escreval("Produtos de Higiene: ")
     escreval("7 - ",nomeproduto[7]," R$",precoProduto[7])
     escreval("8 - ",nomeproduto[8]," R$",precoProduto[8])
     outrocaso
     escreval("Opção inválida.")
   fimescolha
           
   para i de 1 ate numProdutos faca
        se categoria[i] = opcaoProduto entao
            escreval("Produto ",i, ": ",nomeProduto[i], " - Preço: R$ ", precoProduto[i], " - Estoque: ", estoqueProduto[i])
 fimse
    fimpara
    
   escreva("Digite o número do produto que deseja comprar: ")
        leia(i)
        se ((i > 0)) e ((i <= numProdutos)) e ((estoqueProduto[i] > 0))entao
            escreva("Digite a quantidade que deseja comprar: ")
            leia(quantidade)
            se quantidade <= estoqueProduto[i] entao
                numComprados <- numComprados + 1
                carrinhoProduto[numComprados] <- nomeProduto[i]
                carrinhoPreco[numComprados] <- precoProduto[i]
                carrinhoQuantidade[numComprados] <- quantidade
                preco <- precoProduto[i] * quantidade
                total <- total + preco
                estoqueProduto[i] <- estoqueProduto[i] - quantidade
                escreval("Produto adicionado ao carrinho.")
                escreval("    ")
            senao
                escreval("Quantidade indisponível.")
            fimse
        senao
            escreval("Produto não encontrado ou fora de estoque.")
        fimse
        escreval("Deseja continuar comprando? (S/N): ")
        leia(op)


   fimse
           fimenquanto
fimenquanto







Fimalgoritmo