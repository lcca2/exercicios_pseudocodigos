Algoritmo "Folha de pagamento"



var
nome: caracter
salariobruto, diastrabalhados, horames, valorhora, va, vt, descontoinss, descontovt, descontova, descontos, salarioliquido, folhapagamento: real

// Fun��o para calcular o valor por hora
funcao calcular_valor_hora(salariobruto, horames: real): real
var
    valorhora: real
inicio
    valorhora := salariobruto / horames
    retorne valorhora
fimfuncao

// Fun��o para calcular o vale alimenta��o
funcao calcular_va(diastrabalhados: real): real
inicio
    retorne 15 * diastrabalhados
fimfuncao

// Fun��o para calcular o vale transporte
funcao calcular_vt(diastrabalhados: real): real
inicio
    retorne 9.6 * diastrabalhados
fimfuncao

// Fun��o para calcular o desconto do INSS
funcao calcular_desconto_inss(salariobruto: real): real
var
    descontoinss: real
inicio
    se (salariobruto <= 1412) entao
        descontoinss := salariobruto * 0.07
    senao
        se (salariobruto <= 2666) entao
            descontoinss := salariobruto * 0.09
        senao
            se (salariobruto <= 4000) entao
                descontoinss := salariobruto * 0.12
            senao
                se (salariobruto <= 7786) entao
                    descontoinss := salariobruto * 0.14
                fimse
            fimse
        fimse
    fimse
    retorne descontoinss
fimfuncao

// Fun��o para calcular o desconto do vale transporte
funcao calcular_desconto_vt(salariobruto, vt: real): real
var
    descontovt: real
inicio
    descontovt := salariobruto * 0.06
    se (descontovt > vt) entao
        descontovt := vt
    fimse
    retorne descontovt
fimfuncao

// Fun��o para calcular o desconto do vale alimenta��o
funcao calcular_desconto_va(salariobruto: real): real
inicio
    retorne salariobruto * 0.06
fimfuncao

// Fun��o principal para calcular a folha de pagamento
funcao calcular_folha_pagamento(salariobruto, diastrabalhados, horames: real): real
var
    valorhora, va, vt, descontoinss, descontovt, descontova, descontos, salarioliquido: real
inicio
    valorhora := calcular_valor_hora(salariobruto, horames)
    va := calcular_va(diastrabalhados)
    vt := calcular_vt(diastrabalhados)
    descontoinss := calcular_desconto_inss(salariobruto)
    descontovt := calcular_desconto_vt(salariobruto, vt)
    descontova := calcular_desconto_va(salariobruto)
    descontos := descontoinss + descontova + descontovt
    salarioliquido := salariobruto - descontos
    escreval("Valor por hora de trabalho: R$", valorhora:2:2)
    escreval("Valor total de vale transporte recebido no m�s: R$", vt:2:2)
    escreval("Valor total de vale alimenta��o recebido no m�s: R$", va:2:2)
    escreval("---------- Descontos totais -----------")
    escreval("Desconto INSS: R$", descontoinss:2:2)
    escreval("Desconto vale alimenta��o: R$", descontova:2:2)
    escreval("Desconto vale transporte: R$", descontovt:2:2)
    escreval("Sal�rio l�quido (com descontos): R$", salarioliquido:2:2)
    retorne salarioliquido
fimfuncao

inicio
    escreval("------- Calculo de folha de pagamento -------")
    escreva("Nome do funcion�rio: ")
    leia(nome)
    escreva("Sal�rio bruto: R$ ")
    leia(salariobruto)
    escreva("Dias trabalhados: ")
    leia(diastrabalhados)
    escreva("Horas trabalhadas no m�s: ")
    leia(horames)
    folhapagamento <- calcular_folha_pagamento(salariobruto, diastrabalhados, horames)
    escreval
    escreval("Nome do funcion�rio: ", nome)
    escreval("Sal�rio bruto: R$", salariobruto:2:2)
    
    
    
    
fimalgoritmo
