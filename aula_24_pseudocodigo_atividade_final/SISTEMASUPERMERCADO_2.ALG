Algoritmo "SistemaSupermercado"
Var
    opcao, opcaoProduto, quantidade, i, numProdutos, numComprados: inteiro
    total, preco, desconto, valorParcela: real
    nomeProduto, categoria, carrinhoProduto: vetor[1..100] de caractere
    precoProduto, carrinhoPreco: vetor[1..100] de real
    estoqueProduto, carrinhoQuantidade: vetor[1..100] de inteiro
    op, clienteClube: caractere
    resultado: caracter
// Fun��o para exibir o menu principal e retornar a escolha do usu�rio
Funcao MenuPrincipal(opcao: inteiro): inteiro
    escreval("## Supermercado ##")
    escreval("1 - Fazer compras na loja")
    escreval("2 - Fechar caixa")
    escreval("0 - Sair")
    escreval("Escolha uma op��o: ")
    leia(opcao)
    retorne opcao
FimFuncao

// Fun��o para exibir o menu de categorias e retornar a escolha do usu�rio
Funcao MenuCategorias(opcaoProduto: inteiro): inteiro
    escreval("## Categorias de Produtos ##")
    escreval("1 - Padaria")
    escreval("2 - Congelados")
    escreval("3 - N�o perec�veis")
    escreval("4 - Higiene")
    escreval("0 - Voltar ao menu principal")
    escreval("Escolha uma categoria: ")
    leia(opcaoProduto)
    retorne opcaoProduto
FimFuncao

// Procedimento para cadastrar produtos
Funcao CadastrarProdutos(nomeProduto: caracter): caracter
    resultado <- cadastrarprodutos
    // Cadastro de produtos exemplo
    numProdutos <- 8
    nomeProduto[1] <- "P�o"; categoria[1] <- "Padaria"; precoProduto[1] <- 5.0; estoqueProduto[1] <- 20
    nomeProduto[2] <- "Bolo"; categoria[2] <- "Padaria"; precoProduto[2] <- 20.0; estoqueProduto[2] <- 20
    nomeProduto[3] <- "Pizza Congelada"; categoria[3] <- "Congelados"; precoProduto[3] <- 15.0; estoqueProduto[3] <- 20
    nomeProduto[4] <- "Sorvete"; categoria[4] <- "Congelados"; precoProduto[4] <- 10.0; estoqueProduto[4] <- 20
    nomeProduto[5] <- "Arroz"; categoria[5] <- "N�o perec�veis"; precoProduto[5] <- 8.0; estoqueProduto[5] <- 20
    nomeProduto[6] <- "Feij�o"; categoria[6] <- "N�o perec�veis"; precoProduto[6] <- 7.0; estoqueProduto[6] <- 20
    nomeProduto[7] <- "Shampoo"; categoria[7] <- "Higiene"; precoProduto[7] <- 12.0; estoqueProduto[7] <- 20
    nomeProduto[8] <- "Sabonete"; categoria[8] <- "Higiene"; precoProduto[8] <- 2.0; estoqueProduto[8] <- 20
Fimfuncao

// Procedimento para exibir produtos de uma categoria
Funcao ExibirProdutosCategoria(categoriaEscolhida: caractere):caracter
    escreval("Produtos da categoria ", categoriaEscolhida, ":")
    para i de 1 ate numProdutos faca
        se categoria[i] = categoriaEscolhida entao
            escreval("Produto ", i, ": ", nomeProduto[i], " - Pre�o: R$ ", precoProduto[i], " - Estoque: ", estoqueProduto[i])
        fimse
    fimpara
Fimfuncao

// Procedimento para comprar produtos
Procedimento ComprarProdutos()
    enquanto verdadeiro faca
        opcaoProduto <- MenuCategorias()
        se opcaoProduto = 0 entao
            retorne
        fimse
        escolha opcaoProduto
            caso 1
                ExibirProdutosCategoria("Padaria")
            caso 2
                ExibirProdutosCategoria("Congelados")
            caso 3
                ExibirProdutosCategoria("N�o perec�veis")
            caso 4
                ExibirProdutosCategoria("Higiene")
            outrocaso
                escreval("Op��o inv�lida.")
        fimescolha

        escreva("Digite o n�mero do produto que deseja comprar: ")
        leia(i)
        se (i > 0) e (i <= numProdutos) e (estoqueProduto[i] > 0) entao
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
            senao
                escreval("Quantidade indispon�vel.")
            fimse
        senao
            escreval("Produto n�o encontrado ou fora de estoque.")
        fimse
        escreval("Deseja continuar comprando? (S/N): ")
        leia(op)
        se (op = "N") ou (op = "n") entao
            retorne
        fimse
    fimenquanto
FimProcedimento

// Procedimento para exibir relat�rio de compras
Procedimento RelatorioCompras()
    escreval("Resumo da compra:")
    para i de 1 ate numComprados faca
        escreval("Produto: ", carrinhoProduto[i], " - Quantidade: ", carrinhoQuantidade[i], " - Pre�o: R$ ", carrinhoPreco[i], " - Total: R$ ", carrinhoPreco[i] * carrinhoQuantidade[i])
    fimpara
    escreval("Total: R$ ", total)
FimProcedimento

// Procedimento para finalizar compras
Procedimento FinalizarCompras()
    RelatorioCompras()
    escreval("Voc� � cliente clube? (S/N): ")
    leia(clienteClube)
    se (clienteClube = "S") ou (clienteClube = "s") entao
        desconto <- total * 0.05
        total <- total - desconto
        escreval("Voc� ganhou um desconto de 5%! Total com desconto: R$ ", total)
    fimse
    escreval("Escolha a forma de pagamento:")
    escreval("1 - � vista (Dinheiro/PIX)")
    escreval("2 - Cart�o de D�bito")
    escreval("3 - Cart�o de Cr�dito")
    leia(opcao)
    escolha opcao
        caso 1
            escreval("Pagamento realizado � vista. Total: R$ ", total)
        caso 2
            escreval("Pagamento realizado no cart�o de d�bito. Total: R$ ", total)
        caso 3
            escreval("Escolha o n�mero de parcelas (1 a 12): ")
            leia(opcaoProduto)
            se (opcaoProduto >= 1) e (opcaoProduto <= 12) entao
                valorParcela <- total / opcaoProduto
                escreval("Pagamento realizado no cart�o de cr�dito em ", opcaoProduto, "x de R$ ", valorParcela)
            senao
                escreval("N�mero de parcelas inv�lido.")
            fimse
        outrocaso
            escreval("Op��o de pagamento inv�lida.")
    fimescolha
    escreval("Obrigado por suas compras!")
FimProcedimento

Inicio
    resultado <- CadastrarProdutos()
    total <- 0
    numProdutos <- 8
    numComprados <- 0
    repita
        opcao <- MenuPrincipal()
        escolha opcao
            caso 1
                ComprarProdutos()
            caso 2
                FinalizarCompras()
        fimescolha
    ate opcao = 0
    escreval("Obrigado por usar o sistema do supermercado!")
Fimalgoritmo
