# 1) O vetor peso indica o peso médio (em gramas) de pintinhos com 2,4,6,8 e 10 dias de nascidos,
# respectivamente.
#
# peso<-c(42,51,59,64,76)
#
# Considere cada tempo de nascido como sendo uma categoria. Estabeleça um gráfico de barras
# para o peso médio dos pintinhos em cada categoria. Coloque título, limite de y até 100 e nomes
# nos eixos.
peso <- c(42, 51, 59, 64, 76)
names(peso) <-c("2", "4", "6", "8", "10")
barplot(
  peso,
  main = "Peso médio pintinhos p/ dias",
  xlab = "Dias",
  ylab = "Peso médio (g)",
  ylim = c(0,100)
)

# 2) Refaça o gráfico da questão anterior usando as cores: azul, rosa, amarelo, verde e vermelho.
barplot(
  peso,
  main = "Peso médio pintinhos p/ dias",
  xlab = "Dias",
  ylab = "Peso médio",
  ylim = c(0,100),
  col = c("blue", "pink", "yellow", "green", "red")
)

# 3) Numa central telefônica de uma empresa havia a sensação de saturação do sistema utilizado.
# Para melhor representar o que ocorria foi realizado um acompanhamento com as telefonistas,
# que teriam que responder aos problemas e em que números ocorriam e lançá-los na Lista e
# verificação. A tabela abaixo resume os dados dessa lista. Apresente um gráfico em barras para
# esses dados, com barras verticais, com sombreamento de densidade 80 e ângulo das linhas
# de 120 graus.
#    
# Tipo de defeito  Número de ocorrências
# Linha ruidosa    250
# Linha aberta     110
# Alarme           85
# Não responde     45
# Não toca         25
defeitos <- c(250, 110, 85, 45, 25)
barplot(
  defeitos,
  main = "Defeitos do sistema",
  xlab = "Tipo de defeito",
  ylab = "Número de ocorrências",
  density = 80,
  angle = 120,
  col = c("blue", "green", "orange", "brown", "red"),
  legend.text = c("Linha ruidosa", "Linha aberta", "Alarme", "Não responde", "Não toca")
)

# 4) Uma pesquisa para quantificar a população de macacos foi realizada em determinada região e
# os resultados estão abaixo, em forma de vetores:
#
# Reserva: A,A,A,A,A,A,A,A,A,A,B,B,B,B,B,B,B,B,B,B
# Macacos: 22,28,37,34,13,24,39,5,33,32,7,15,12,14,4,14,16,60,13,16
# Frutíferas: 25,26,40,30,10,20,35,8,35,28,6,17,18,11,6,15,20,16,12,15

Reserva <- c("A","A","A","A","A","A","A","A","A","A","B","B","B","B","B","B","B","B","B","B")
Macacos <- c(22,28,37,34,13,24,39,5,33,32,7,15,12,14,4,14,16,60,13,16)
Frutíferas <- c(25,26,40,30,10,20,35,8,35,28,6,17,18,11,6,15,20,16,12,15)
macac <- data.frame(Reserva, Macacos, Frutíferas)

# a) Construa um gráfico boxplot de macacos em função da reserva, com título principal “Densidade
# populacional de macacos”, coloque títulos nos eixos, limites de y de 0 a 50, escolha cor para
# as caixas.
boxplot(
  Macacos~Reserva,
  data = macac,
  main = "Densidade populacional de macacos",
  xlab = "Reservas",
  ylab = "Quantidade de macacos",
  ylim = c(0, 50),
  col = 4
)

# b) Construa um gráfico boxplot de frutíferas em função da reserva, com título principal “Densidade
# de árvores”, coloque títulos nos eixos, limites de y de 0 a 50, escolha cor para as caixas.
boxplot(
  Frutíferas~Reserva,
  data = macac,
  main = "Densidade de árvores",
  xlab = "Reservas",
  ylab = "Quantidade de árvores",
  ylim = c(0, 50),
  col = 5
)

# c) Compare os gráficos em função da quantidade de macacos e árvores frutíferas e conclua o que
# acontece nessa situação.

  # Quanto maior a quantidade de árvores frutíferas na reserva, maior a quantidade de macacos.

# 5) O arquivo “Defeitos no computador” mostra a distribuição da quantidade de defeitos por
# computador para uma amostra de 100 aparelhos. Calcule:

library(readr)
Defeitos_no_computador <- read_table2("Defeitos_no_computador.txt")

# a) a média de defeitos por computador
mean(Defeitos_no_computador$Defeitos)

# b) a moda
install.packages("modeest")
modeest::mfv(Defeitos_no_computador$Defeitos)

# c) a mediana
median(Defeitos_no_computador$Defeitos)

# d) a variância
var(Defeitos_no_computador$Defeitos)

# e) o desvio padrão
sd(Defeitos_no_computador$Defeitos)

# 6) Determine a média, a mediana e a moda da distribuição abaixo:
#       Classes
#      x i     fi
#    2 |- 4    5
#    4 |- 6    7
#    6 |- 8    10
#    8 |- 10   3
#    10|- 12   5
dist <- c(
  3, 3, 3, 3, 3,
  5, 5, 5, 5, 5, 5, 5,
  7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
  9, 9, 9,
  11, 11, 11, 11, 11
)

# Média
mean(dist)

# Mediana
median(dist)

# Moda
modeest::mfv(dist)

# 7) Sabendo que um conjunto de dados apresenta para a média aritmética o valor de 18,3 e para
# o desvio padrão o valor de 1,47, calcule o coeficiente de variação.
cv <- (1.47 / 18.3) * 100
cv

# 8) Em um exame final de Matemática, a nota média de um grupo de 150 alunos foi 7,8 e o desvio
# padrão, 0,80. Em estatística, entretanto, a nota média final foi 7,3 e o desvio padrão foi 0,76.
# Em que disciplina foi maior a dispersão?
cvMat <- (0.80 / 7.8) * 100
cvMat
cvEst <- (0.76 / 7.3) * 100
cvEst

# Em ambas as disciplinas há baixa dispersão, pois o CV ficou abaixo de 15%. Entretanto a disciplina
# de estatística tem um pouco a mais de dispersão em relação a Matemática;

# 9) Um grupo de 85 moças tem estatura média de 160,6 cm, com um desvio padrão igual a 5,97
# cm. Outro grupo de 125 moças tem uma estatura média de 161,9 cm, sendo o desvio padrão
# igual a 6,01 cm.

# Qual é o coeficiente de variação de cada um dos grupos?
cvGrupo85 <- (5.97 / 160.6) * 100
cvGrupo85
cvGrupo125 <- (6.01 / 161.9) * 100
cvGrupo125

# Qual o grupo mais homogêneo?
# Ambos os grupos estão muito próximos com baixa disperção, entretanto o grupo de 125 moças
# é mais homogêneo.

# Um grupo de cem estudantes tem uma estatura média de 163,8 cm, com um coeficiente de
# variação de 3,3%. Qual o desvio padrão desse grupo?
dpGrupo100 <- (3.3 / 100) * 163.8
dpGrupo100