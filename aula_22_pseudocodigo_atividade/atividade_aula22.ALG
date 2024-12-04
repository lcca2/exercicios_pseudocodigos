Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024
Var
// Seção de Declarações das variáveis 
nome: caracter
horatrabalhada, horames, salariobruto: inteiro
diastrabalhados: inteiro
valorhora, descontoinss, vt, va, descontos, descontovt, descontova, salarioliquido: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("------- Calculo de folha de pagamento -------")
escreva("Nome do funcionário: ")
leia(nome)
escreva("Salário bruto: R$ ")
leia(salariobruto)
escreva("Dias trabalhados: ")
leia(diastrabalhados)
escreva("Horas trabalhadas no mês: ")
leia(horames)
valorhora <- (salariobruto/horames)
escreva("Valor por hora de trabalho: R$",valorhora:2:2)
escreval

va <- 15*diastrabalhados
vt <- 9.6*diastrabalhados



                se(salariobruto <= 1412) entao
                  descontoinss <- salariobruto*0.07
                senao
                se((salariobruto > 1412)ou(salariobruto <= 2666))entao
                  descontoinss <- salariobruto*0.09
                senao
                se((salariobruto > 2666)ou(salariobruto <= 4000))entao
                  descontoinss <- salariobruto*1.2
                senao
                se((salariobruto > 4000)ou(salariobruto <= 7786))entao
                  descontoinss <- salariobruto*1.4
                fimse
              fimse
           fimse
        fimse

descontovt <- salariobruto*0.06

           se(descontovt > vt)entao
             descontovt <- vt
           fimse




descontova <- salariobruto*0.06
descontos <- descontoinss+descontova+descontovt
salarioliquido <- salariobruto - descontos


escreval
escreval
escreval("Nome do funcionário: ",nome)
escreval("Salário bruto: R$",salariobruto:2:2)
escreval("Valor total de vale transporte recebido no mês: R$",vt:2:2)
escreval("Valor total de vale alimentação recebido no mês: R$",va:2:2)
escreval
escreval("---------- Descontos totais -----------")
escreval("Desconto INSS: R$", descontoinss)
escreval("Desconto vale alimentação: R$",descontova:2:2)
escreval("Desconto vale transporte: R$",descontovt:2:2)
escreval("Salário liquído(com descontos): R$",salarioliquido:2:2)



Fimalgoritmo