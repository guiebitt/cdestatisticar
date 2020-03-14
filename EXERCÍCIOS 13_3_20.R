# 1) Encontrar o tipo de dado em cada questão digitando os códigos abaixo no script do R,
# utilizando ocódigo mode(.......). Exiba os comandos utilizados até chegar aoresultado.

# a) valor
ex1a = "valor"
mode(ex1a)

# b) string
ex1b = "string"
mode(ex1b)

# c) 2<4
ex1c = 2<4
mode(ex1c)

# d) sin
ex1d = sin
mode(ex1d)

# 2) Digite as expressões numéricas no script do R e encontre os resultados.

# a)
ex2a <- 4+9
ex2a

# b)
ex2b <- 4-5
ex2b

# c)
ex2c <- 4*5
ex2c

# d)
ex2d <- 4:5
ex2d

# e)
ex2e <- 4^2
ex2e

# f)
ex2f <-4^5
ex2f

# g)
ex2g <- (25-12)^2
ex2g

# h)
ex2h <- (4+5)*7-(36/18)^3
ex2h

# i)
ex2i <- 0/0
ex2i

# j)
ex2j <- Inf/0
ex2j

# 3) Faça os arredondamentos requeridos usando das funções ceiling (x) e floor (x) e 
# transcreva a sequência os comandos utilizados até chegar ao resultado.

# a) Arredonde o valor de 2,547 para o maior valor.
ex3a <- 2.547
ceiling(ex3a)

# b) Arredonde o valor de 2,547 para o menor valor.
ex3b <- 2.547
floor(ex3b)

# 4) Arredonde os valores de acordo com o número pré-estabelecido de casas decimais. 
# Consulte a função para esta atividade e transcreva a sequência dos comandos utilizados
# até chegar ao resultado.

# a) 2,4785269 para 3 casas decimais.
ex4a <- 2.4785269
round(ex4a, 3)

# b) 84,5468 para 2 casas decimais.
ex4b <- 84.5468
round(ex4b, 2)

# c) 5,8467 para 1 casa decimal.
ex4c <- 5.8467
round(ex4c, 1)

# 5) Arredonde os valores de acordo com o número pré-estabelecido de algarismos
# significativos. Consulte a função para esta atividade e transcreva a sequência dos
# comandos que aparecem no console, que foram utilizados até chegar ao resultado.

# a) 2,4785269 para 3 algarismos significativos.
ex5a <- 2.4785269
signif(ex5a, 3)

# b) 84,5468 para 2 algarismos significativos.
ex5b <- 84.5468
signif(ex5b, 2)

# c) 5,8467 para 1 algarismo significativo.
ex5c <- 5.8467
signif(ex5c, 1)

# 6) Atribua o valor de 25 para a variável x e o valor 17 para a variável y. Em
# seguida dê o comando para remover a variável x.
x <- 25
x
y <- 17
y
rm(x)
try(x)
y

# 7) Organize uma tabela usando o comando names( ) para uma família que possui 18
# pessoas, sendo que 5 delas são crianças e o restante é composto de pessoas adultas.
familia <- c(18, 5, 13)
names(familia) <- c("Pessoas", "Crianças", "Adultos")
familia

# 8) Em um grupo de 4 amigos, fez-se o levantamento das idades de cada um. O primeiro tem
# 47 anos, o segundo tem 18 anos, o terceiro não quis responder e o quarto tem 30 anos.
# Atribua esses valores para uma variável chamada idades e calcule a média de idades
# usando o comando mean( ), lembrando que existe alguém que não respondeu a pesquisa.
# Em seguida arredonde o valor da média para 1 casa decimal.
idades <- c(47, 18, NA, 30)
mediaIdades <- mean(idades, na.rm = TRUE)
mediaIdades
round(mediaIdades)

# 9) Usando o conceito e códigos de sequência numérica de valores, crie as sequências
# abaixo no RStudio:

# e) sequência de números de 1 a 5.
ex9e <- 1:5
ex9e

# f) sequência de números de 5 a 1.
ex9f <- 5:1
ex9f

# g) sequência de números de 1 a 20, com incremento de 5.
ex9g <- seq(1, 20, 5)
ex9g

# h) sequência de números de 20 a 1, com incremento de 5.
try(ex9h <- seq(20, 1, 5))

# i) sequência de números de 20 a 1, com incremento de -5.
ex9i <- seq(20, 1, -5)
ex9i

# 10) Usando o conceito e código de repetições, crie as repetições abaixo no RStudio:

# a) repetição do número 6 por 8 vezes.
ex10a <- rep(6, 8)
ex10a

# b) repetição do vetor (2,3) por 5 vezes.
ex10b <- rep(c(2,3), 5)
ex10b

# c) repetição do vetor (2,3,5) por 5 vezes.
ex10c <- rep(c(2,3,5), 5)
ex10c

# d) concatene a repetição do número 2 por 4 vezes e do número 3 por 5 vezes.
ex10d <- c(rep(2, 4), rep(3, 5))
ex10d

# e) concatene a repetição do número 1 por 5 vezes, do número 2 por 3 vezes e do número
# 3 por 5 vezes.
ex10e <- c(rep(1, 5), rep(2, 3), rep(3, 5))
ex10e

# 11) Crie os vetores abaixo e localize os índices indicados em cada letra:

# a) crie o vetor “a” com a sequência de números de 5 a 10 e localize o terceiro elemento.
a <- 5:10
a[3]

# b) no vetor “a”, localize do primeiro ao quarto elementos.
a[1:4]

# c) no vetor “a”, localize o primeiro e quarto elementos.
a[c(1, 4)]

# d) no vetor “a”, localize os elementos maiores que 7.
a[a>7]

# e) no vetor “a”, localize os elementos menores que 7.
a[a<7]

# f) no vetor “a”, localize todos os elementos, exceto os números 6 e 7.
a[-c(2,3)]

# 12) Siga a sequência abaixo:

# a) Crie o vetor “b” com a sequência de números de 1 a 11 com incremento 2.
b <- seq(1, 11, 2)
b

# b) Utilize os dados do vetor “b” para criar uma matriz 3x2, disposta através das linhas.
b <- matrix(b, 3, 2, 1)
b

# c) Localize o primeiro elemento da segunda coluna da matriz.
b[1, 2]

# d) Usando o comando summary(B), encontre as medidas descritivas da matriz.
summary(b)

# 13) Siga a sequência abaixo:

# a) Crie uma matriz “c” com números de 1 a 20, com 4 colunas.
c <- matrix(1:20, 5, 4)
c

# b) acrescente uma coluna com os números de 4 a 8, criando assim uma matriz, chamada
# de “d”.
d <- cbind(c, 4:8)
d

# c) Na matriz “d”, acrescente uma nova linha com os valores de 1 a 5.
d <- rbind(d, 1:5)
d

# d) Na matriz “d”, localize o terceiro elemento da segunda coluna.
d[3, 2]

# e) Na matriz “d”, localize a terceira coluna.
d[, 3]

# f) Na matriz “d”, localize a terceira linha.
d[3, ]

# 14) Crie um array com sequência de números de 1 a 16, com 4 linhas, 2 colunas,
# divididos em 2 matrizes. Após isso, localize o elemento da segunda linha e segunda
# coluna da matriz 2.
ex14 <- array(1:16, c(4, 2, 2))
ex14
ex14[2, 2, 2]