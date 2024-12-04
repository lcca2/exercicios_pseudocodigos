Algoritmo "SistemaSupermercado"
Var
    opcao, opcaoProduto, quantidade, i: inteiro
    total, preco, desconto: real
    nomeProduto, categoria: vetor[1..100] de caractere
    precoProduto: vetor[1..100] de real
    estoqueProduto, quantidadeComprada: vetor[1..100] de inteiro
    numProdutos, numComprados: inteiro
    op, clienteClube: caractere

// Função para exibir o menu principal e retornar a escolha do usuário
Funcao inteiro MenuPrincipal()
    escreval("## Supermercado ##")
    escreval("1 - Fazer compras na loja")
    escreval("2 - Fechar caixa")
    escreval("0 - Sair")
    escreval("Escolha uma opção: ")
    leia(opcao)
    retorne opcao
FimFuncao

// Função para exibir o menu de categorias e retornar a escolha do usuário
Funcao inteiro MenuCategorias()
    escreval("## Categorias de Produtos ##")
    escreval("1 - Padaria")
    escreval("2 - Congelados")
    escreval("3 - Não perecíveis")
    escreval("4 - Higiene")
    escreval("0 - Voltar ao menu principal")
    escreval("Escolha uma categoria: ")
    leia(opcaoProduto)
    retorne opcaoProduto
FimFuncao

// Procedimento para cadastrar produtos
Procedimento CadastrarProdutos()
    // Cadastro de produtos exemplo
    numProdutos <- 8
    nomeProduto[1] <- "Pão"; categoria[1] <- "Padaria"; precoProduto[1] <- 5.0; estoqueProduto[1] <- 50
    nomeProduto[2] <- "Bolo"; categoria[2] <- "Padaria"; precoProduto[2] <- 20.0; estoqueProduto[2] <- 20
    nomeProduto[3] <- "Pizza Congelada"; categoria[3] <- "Congelados"; precoProduto[3] <- 15.0; estoqueProduto[3] <- 30
    nomeProduto[4] <- "Sorvete"; categoria[4] <- "Congelados"; precoProduto[4] <- 10.0; estoqueProduto[4] <- 25
    nomeProduto[5] <- "Arroz"; categoria[5] <- "Não perecíveis"; precoProduto[5] <- 8.0; estoqueProduto[5] <- 100
    nomeProduto[6] <- "Feijão"; categoria[6] <- "Não perecíveis"; precoProduto[6] <- 7.0; estoqueProduto[6] <- 80
    nomeProduto[7] <- "Shampoo"; categoria[7] <- "Higiene"; precoProduto[7] <- 12.0; estoqueProduto[7] <- 40
    nomeProduto[8] <- "Sabonete"; categoria[8] <- "Higiene"; precoProduto[8] <- 2.0; estoqueProduto[8] <- 100
FimProcedimento

// Procedimento para exibir produtos de uma categoria
Procedimento ExibirProdutosCategoria(categoriaEscolhida: caractere)
    escreval("Produtos da categoria ", categoriaEscolhida, ":")
    para i de 1 ate numProdutos faca
        se categoria[i] = categoriaEscolhida entao
            escreval("Produto ", i, ": ", nomeProduto[i], " - Preço: R$ ", precoProduto[i], " - Estoque: ", estoqueProduto[i])
        fimse
    fimpara
FimProcedimento

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
                ExibirProdutosCategoria("Não perecíveis")
            caso 4
                ExibirProdutosCategoria("Higiene")
            outrocaso
                escreval("Opção inválida.")
        fimescolha

        escreva("Digite o número do produto que deseja comprar: ")
        leia(i)
        se (i > 0) e (i <= numProdutos) e (estoqueProduto[i] > 0) entao
            escreva("Digite a quantidade que deseja comprar: ")
            leia(quantidade)
            se quantidade <= estoqueProduto[i] entao
                numComprados <- numComprados + 1
                quantidadeComprada[numComprados] <- quantidade
                preco <- precoProduto[i] * quantidade
                total <- total + preco
                estoqueProduto[i] <- estoqueProduto[i] - quantidade
                escreval("Produto adicionado ao carrinho.")
            senao
                escreval("Quantidade indisponível.")
            fimse
        senao
            escreval("Produto não encontrado ou fora de estoque.")
        fimse
        escreval("Deseja continuar comprando? (S/N): ")
        leia(op)
        se (op = "N") ou (op = "n") entao
            retorne
        fimse
    fimenquanto
FimProcedimento

// Procedimento para finalizar compras
Procedimento FinalizarCompras()
    escreval("Deseja finalizar a compra? (S/N): ")
    leia(op)
    se (op = "S") ou (op = "s") entao
        escreval("Resumo da compra:")
        para i de 1 ate numComprados faca
            escreval("Produto ", i, ": ", quantidadeComprada[i], " unidade(s)")
        fimpara
        escreval("Total: R$ ", total)
        escreval("Você é cliente clube? (S/N): ")
        leia(clienteClube)
        se (clienteClube = "S") ou (clienteClube = "s") entao
            desconto <- total * 0.05
            total <- total - desconto
            escreval("Você ganhou um desconto de 5%! Total com desconto: R$ ", total)
        fimse
        escreval("Obrigado por suas compras!")
    senao
        escreval("Compra cancelada.")
    fimse
FimProcedimento

Inicio
    CadastrarProdutos()
    total <- 0
    numProdutos <- 0
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
