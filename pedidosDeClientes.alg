// Você deverá criar um algoritmo que 
// simule um sistema simples 
// de atendimento de pedidos em uma lanchonete.

// Seu algoritmo deverá demonstrar que você sabe utilizar:
// • variáveis
// • entrada, saída e processamento de dados
// • operadores aritméticos
// • operadores relacionais
// • operadores lógicos
// • estruturas de decisão
// • estrutura de repetição para

// 4. SITUAÇÃO-PROBLEMA
// Uma lanchonete deseja um algoritmo simples para registrar pedidos de clientes. O sistema deverá:
// • identificar o nome do cliente
// • registrar a quantidade de itens pedidos
// • receber o valor de cada item
// • calcular o valor total do pedido
// • verificar se o cliente tem direito a desconto
// • informar se o pedido terá entrega grátis
// • exibir um resumo final do pedido

algoritmo "AV2 - Lógica de Programação"
// Disciplina  :  Lógica de Programação
// Professor   : Ronaldo Cysne
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Paulo André Santos Queiroz
// Data atual  : ${01}/${Junho}/${2004}

var
nomeCliente: caractere
nomeDoItem: vetor[1..100] de caractere
temDesconto: caractere
entregaGratis: caractere

i: inteiro
quantidadeEscolhida: inteiro
quantidadeItem: vetor[1..100] de inteiro

valorItem: vetor[1..100] de real
valorPedido: real
valorDesconto: real
valorEntrega: real
valorTotal: real

inicio

// 4. SITUAÇÃO-PROBLEMA
// Uma lanchonete deseja um algoritmo simples para registrar pedidos de clientes. O sistema deverá:
// • identificar o nome do cliente
// • registrar a quantidade de itens pedidos
// • receber o valor de cada item
// • calcular o valor total do pedido
// • verificar se o cliente tem direito a desconto
// • informar se o pedido terá entrega grátis
// • exibir um resumo final do pedido
valorPedido <- 0
valorDesconto <- 0
valorEntrega <- 0

escreval("")
escreval("Bem-vindo ao sistema de registro de pedidos de clientes. Vamos começar?")
escreval("")

escreval("Digite o nome do cliente:")
leia(nomeCliente)
escreval("")

escreval("Digite a quantidade de itens no pedido:")
leia(quantidadeEscolhida)

para i de 1 ate quantidadeEscolhida faca

   escreval("Nome do item:")
   leia(nomeDoItem[i])

   escreval("Quantidade:")
   leia(quantidadeItem[i])

   escreval("Valor:")
   leia(valorItem[i])

   valorPedido <- valorPedido + (quantidadeItem[i] * valorItem[i])

fimpara

escreval("")
escreval("Resumo do pedido:")

para i de 1 ate quantidadeEscolhida faca

   escreval("Item: ", nomeDoItem[i])
   escreval("Quantidade: ", quantidadeItem[i])
   escreval("Valor: R$", valorItem[i])
   escreval("")

fimpara

escreval("Valor total dos produtos: R$", valorPedido)
escreval("")

escreval("O cliente possui desconto? (sim/nao)")
leia(temDesconto)

se (temDesconto = "sim") entao
   escreval("Qual o valor do Desconto?")
   leia(valorDesconto)
fimse

escreval("O cliente possui frete grátis? (sim/nao)")
leia(entregaGratis)

se (entregaGratis = "nao") entao
   escreval("qual o valor da entrega?")
   leia(valorEntrega)
fimse

valorTotal <- (valorPedido + valorEntrega) - valorDesconto

escreval("")
escreval("===== RESUMO FINAL =====")
escreval("Cliente: ", nomeCliente)
escreval("Tem desconto? ", temDesconto)
escreval("Entrega grátis? ", entregaGratis)
escreval("Valor dos produtos: R$", valorPedido)
escreval("Valor do desconto: R$", valorDesconto)
escreval("Valor da entrega: R$", valorEntrega)
escreval("O valor total do pedido: R$", valorTotal)

escreval("")
escreval("Fim do programa.")

fimalgoritmo