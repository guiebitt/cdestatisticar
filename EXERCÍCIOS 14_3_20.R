# 1) Cite 4 principais tipos de objetos do R e explique cada um deles.

  # Vetor (vector): uma dos tipos mais usados e que permite o armazenagem de múltiplos
  # valores do mesmo tipo;

  # Matriz (matrix): tipo de dados que armazena valores em formato linha/coluna;

  # Array: semelhante ao tipo Matriz, entretanto, permite a definição de múltiplas dimensões;

  # Data frame (data.frame): é semelhante a uma matriz, mas permite utilizar tipos de dados
  # diferentes. É um dos tipos mais utilizados para análises devido as funções que possuem
  # e facilitam a análise;

# 2) Qual a vantagem de guardarmos informação categórica como fatores em vez de usarmos strings?

  # Fatores (factor): permite trabalhar de forma adequada com dados do tipo categórico, pois
  # o R possui funções para este tipo de dados que facilitam como, por exemplo,
  # identificar os níveis de categoria (levels);

# 3) Qual a principal característica de um data.frame?

  # No data.frame, cada coluna pode ter um tipo de dados diferente;

# 4) Monte um data.frame chamado macac, com os dados obtidos da reserva A e B, para macacos e
# quantidade de árvores frutíferas, de acordo com os vetores abaixo e responda as questões:
# Reserva: A,A,A,A,A,A,A,A,A,A,B,B,B,B,B,B,B,B,B,B
# Macacos: 22,28,37,34,13,24,39,5,33,32,7,15,12,14,4,14,16,60,13,16
# Frutíferas: 25,26,40,30,10,20,35,8,35,28,6,17,18,11,6,15,20,16,12,15

Reserva <- c("A","A","A","A","A","A","A","A","A","A","B","B","B","B","B","B","B","B","B","B")
Macacos <- c(22,28,37,34,13,24,39,5,33,32,7,15,12,14,4,14,16,60,13,16)
Frutíferas <- c(25,26,40,30,10,20,35,8,35,28,6,17,18,11,6,15,20,16,12,15)
macac <- data.frame(Reserva, Macacos, Frutíferas)
macac

# a) Verifique se a 1a coluna é um fator um caractere.
is.factor(macac[,1])
is.character(macac[,1])

# b) Caso a 1a coluna seja um fator, transforme em caracteres.
macac[,1] <- as.character(macac[,1])
is.character(macac[,1])

# c) Confira agora se a 1a coluna é um fator ou caractere através do comando mode e fazendo a
# pergunta através do is.
mode(macac[,1])
is.factor(macac[,1])
is.character(macac[,1])

# d) Acesse a coluna Macacos.
macac$Macacos

# e) Localize o 12o elemento de Macacos.
macac$Macacos[12]

# f) Adicione uma coluna chamada Mortes, com os valores 2,7,1,2,7,4,2,4,3,9,6,6,4,1,3,1,7,2,1,8.
Mortes <- c(2,7,1,2,7,4,2,4,3,9,6,6,4,1,3,1,7,2,1,8)
macac <- cbind(macac, Mortes)
macac

# g) Exclua a coluna Frutíferas.
macac <- macac[,-3]
macac

# h) Selecione os elementos da reserva A e armazene em outro data.frame, chamado A.
A <- data.frame(macac[macac$Reserva=="A",])
A

# i) Calcule a média de macacos da reserva A e a média de mortes dessa reserva.
mean(A$Macacos)
mean(A$Mortes)

# j) No data.frame A, organize os dados em ordem crescente de mortes.
Aordernado <- A[order(A$Mortes),]
Aordernado

# k) Separe o data.frame macac por reserva.
macacSep <- split(macac, macac$Reserva)
macacSep

# 5) Crie a matriz A com os números 2,5,2,6,1,4, com 2 linhas e 3 colunas, orientada por linhas e em
# seguida multiplique essa matriz por 3.
A <- matrix(c(2,5,2,6,1,4), 2, 3, byrow = TRUE)
A
A <- A * 3
A

# 6) Crie a matriz D com os números 15,18,21,27,18,10,14,5,4, com 3 linhas e 3 colunas, orientada
# por linhas e em seguida multiplique essa matriz por 2:
D <- matrix(c(15,18,21,27,18,10,14,5,4), 3, 3, byrow = TRUE)
D
D <- D * 2
D

# 7) Resolva a operação abaixo, criando a matriz B
B <- 2/7*(matrix(c(1,2,2,4,7,6), 3, 2, byrow = TRUE) - matrix(c(10,20,30,40,50,60), 3, 2, byrow = TRUE))
B

# 8) Multiplique a matriz B pela matriz A.
try(B*A)
B%*%A

# 9) Qual a amplitude da matriz A? Explique os valores encontrados.
range(A)
  # O menor valor é 3 e o maior valor 18, esta é a amplitude dos valores da matriz A

# 10) Qual a soma dos elementos de A?
sum(A)

# 11) Qual o produto dos elementos de A?
prod(A)

# 12) Qual é a soma das colunas de A?
colSums(A)

# 13) Qual a soma dos valores menores que 4 na matriz B?
sum(B[B<4])

# 14) Importe a planilha do Excel Exercicios através do comando Import Dataset. Selecione as
# colunas Idade e NF para “numérico” já ao importar o arquivo.

library(readxl)
Exercicios <- read_excel("Exercicios.xlsx")

# a) verifique se é um data.frame
is.data.frame(Exercicios)

# b) Transforme a coluna Sexo em fator.
Exercicios$Sexo <- as.factor(Exercicios$Sexo)
Exercicios

# c) calcule a média de Idade.
mean(Exercicios$Idade)

# 15) Crie uma função em que você tenha como input um número n e que retorne como resultado o
# quadrado de n.
fnQuadrado <- function(numero) 
{
  return(numero^2)
}
fnQuadrado(4)

# 16) Crie uma função cujo input dado sejam dois números, n e m, e que lhe retorne a soma e o
# produto dos dois números. Faça com que essa função tenha m=1 caso o usuário não atribua
# nenhum valor a n:
fnSomaProduto <- function(n,m = 1) 
{
  print(n+m)
  print(prod(n,m))
}
fnSomaProduto(2,1)
fnSomaProduto(2)

# 17) Crie uma função que subtraia a raiz quadrada de dois números e chame-a de questao3. Após
# isso teste a função criada com os valores 100 e 25.
questao3 <- function(n1, n2)
{
  return(sqrt(n1)-sqrt(n2))
}
questao3(100,25)

# 18) Crie uma função chamada jogar.dado, que corresponda ao jogo de um dado, com reposição.
# Depois teste para 4 jogadas e 6 jogadas desse dado.
jogar.dado <- function(qtdJogadas)
{
  sample(c('1', '2', '3', '4', '5', '6'), qtdJogadas, replace = TRUE)
}
jogar.dado(4)
jogar.dado(6)

# 19) Foram levantadas as idades de pessoas que frequentam uma determinada lanchonete que
# vende bebidas alcoólicas. Os dados foram, 17,25,18,12,14,53,45,10,62,13,16,19. Considerando
# que as pessoas que possuem acima de 18 anos são “maiores” e as pessoas que possuem abaixo
# de 18 anos são “menores”, crie uma função chamada idades, envolvendo a condição ifelse para
# este caso e descubra quais são maiores e menores de idade.
IdadesPessoas <- c(17,25,18,12,14,53,45,10,62,13,16,19)
idades <- function(pessoas)
{
  Maioridade <- c()
  for (pessoa in pessoas) {
    ifelse (pessoa >= 18, ehMaior <- T, ehMaior <- F)
    Maioridade <- c(Maioridade, ehMaior);
  }
  print(Maioridade)
  return(data.frame(Pessoas=pessoas, Maioridade))
}
idades(IdadesPessoas)

# 20) Crie uma função que calcula a área de um triângulo, chame-a de área e teste sua função com
# os valores de 5 cm para a base e 2cm para a altura.
area <- function(base, altura)
{
  return((base*altura)/2)
}
area(5,2)

# 21) Crie uma função para resolver equações de segundo grau, onde: se delta<0, teremos “raízes
# complexas”, ou então, teremos raiz1 e raiz2, lembrando que para calcular as raízes, o delta é b^2-
#   4*a*c. Teste a função criada para:
equacao2grau <- function(a, b, c)
{
  delta <- b^2-4*a*c
  if (delta<0)
    print("raízes complexas")
  else {
    raiz1 <- (-(b)+sqrt(delta))/(2*a)
    raiz2 <- (-(b)-sqrt(delta))/(2*a)
    print(raiz1)
    print(raiz2)
  }
}

# a) x² + 7x + 6
equacao2grau(1, 7, 6)

# b) x² + 3x + 5
equacao2grau(1, 3, 5)

# 22) Um dado foi lançado 50 vezes e foram registrados os seguintes resultados:
#
# 5 4 6 1 2 5 3 1 3 3
# 4 4 1 5 5 6 1 2 5 1
# 3 4 5 1 1 6 6 2 1 1
# 4 4 4 3 4 3 2 2 2 3
# 6 6 3 2 4 2 6 6 2 1
# 
# Construa o histograma dos resultados, com intervalo fechado à esquerda. Escolha um título para o
# gráfico e para os eixos x e y e a cor das barras faça de verde.

resultadoDados <- c(5,4,6,1,2,5,3,1,3,3, 4,4,1,5,5,6,1,2,5,1, 3,4,5,1,1,6,6,2,1,1, 4,4,4,3,4,3,2,2,2,3, 6,6,3,2,4,2,6,6,2,1)
resultadoDados
hist(resultadoDados,
     main = "Dados lançados",
     xlab = "Lado do dado",
     ylab = "Frequência",
     col="green",
     right = FALSE)

# 23) Os dados seguintes representam 20 observações relativas ao índice pluviométrico em
# determinado município do Estado:
#   
# Milímetros de chuva
# 144 152 159 160
# 160 151 157 146
# 154 145 151 150
# 142 146 142 141
# 141 150 143 158
#
# Construa o histograma dos resultados, com intervalo fechado à esquerda. Escolha um título para o
# gráfico e para os eixos x e y e a cor das barras faça de amarelo. Altere os limites dos eixos x e y
# para valores à sua escolha.

dadosPluviometrico <- c(144,152,159,160,160,151,157,146,154,145,151,150,142,146,142,141,141,150,143,158)
dadosPluviometrico
hist(dadosPluviometrico,
     main = "Índice Pluviométrico",
     xlab = "Medida",
     ylab = "Frequência",
     col="yellow",
     right = F,
     xlim = c(125, 175),
     ylim = c(0, 25))

# 24) Os dados são referentes às temperaturas diárias do mês de maio e setembro, em Fahrenheit,
# na cidade de Nova York em 1973.

# tempm=c(67,72,74,62,56,66,65,59,61,69,74,69,66,68,58,64,66,57,68,62,59,73,61,61,57,58,57,67,8
#         1,79,76)
# temps=c(91,92,93,93,87,84,80,78,75,73,81,76,77,71,71,78,67,76,68,82,64,71,81,69,63,70,77,7
#         5,76,68)

tempm=c(67,72,74,62,56,66,65,59,61,69,74,69,66,68,58,64,66,57,68,62,59,73,61,61,57,58,57,67,81,79,76)
temps=c(91,92,93,93,87,84,80,78,75,73,81,76,77,71,71,78,67,76,68,82,64,71,81,69,63,70,77,75,76,68)

# a) Faça o histograma das temperaturas do mês de maio. Coloque título e linhas de sombreamento
# de densidade 30 (use density=30). Faça o eixo y ter amplitude de 1 a 10.
hist(tempm,
     main = "Temperaturas Maio (Nova York - 1973)",
     xlab = "Temperatura (Fahrenheit)",
     ylab = "Frequência",
     density=30,
     ylim = c(1, 10))

# b) Faça o histograma das temperaturas do mês de setembro. Coloque título e cor = “Violet”.
hist(temps,
     main = "Temperaturas Setembro (Nova York - 1973)",
     xlab = "Temperatura (Fahrenheit)",
     ylab = "Frequência",
     col="violet")

# c) Converta as temperaturas do mês de maio para graus Celsius através da expressão °C = (°F − 32) / 1,8.
# Faça o histograma, coloque título, verifique os limites dos eixos x e y, sombreamento de densidade 25 e cor = “dark blue”.
convFahrenheitParaCelsius <- function(temp)
{
  return((temp - 32) / 1.8)
}
tempmCelsius <- c()
for (temp in tempm) {
  tempmCelsius <- c(tempmCelsius, convFahrenheitParaCelsius(temp))
}
tempmCelsius

hist(tempmCelsius,
     main = "Temperaturas Maio (Nova York - 1973)",
     xlab = "Temperatura (Celsius)",
     col = "dark blue",
     ylab = "Frequência",
     density=30,
     xlim=c(10, 30),
     ylim = c(0, 10))

# 25) Um pesquisador descobriu que a relação entre horas de estudo e nota da prova na disciplina
# de Estatística de determinada universidade está regida pela equação y = 1,35x+44,59.

x = c(0:30)
y = 1.35*x+44.59

# a) Plote esse gráfico, com x (horas de estudo) variando de 0 a 30h e notas variando de 0 a 100, dê
# títulos para os eixos e para o gráfico, dê limites coerentes para os eixos, escolha cor e formato
# para os pontos, tamanho de traço para os eixos, tamanho dos pontos.
plot(x,
     y,
     xlim = c(0,30),
     ylim = c(0,100),
     xlab = "Horas de estudo",
     ylab = "Notas",
     col = "blue",
     pch = 25,
     tcl = 0.5,
     cex = 0.8)

# b) Analise o gráfico em termos de notas versus horas de estudo.
  # Quanto maior o tempo de estudo, maior a nota da pessoa