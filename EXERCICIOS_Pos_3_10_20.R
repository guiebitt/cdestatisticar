# Modelo binomial

# 1) Qual é a probabilidade de se obter 3 caras em 5 lançamentos de uma moeda honesta?
x <- 3
n <- 5
p <- 0.5
dbinom(x, n, p)

# 2) Qual é a probabilidade de se obter menos que 3 caras em 5 lançamentos da mesma moeda?
n <- 5
p <- 0.5
dbinom(0, n, p) + dbinom(1, n, p) + dbinom(2, n, p)

# 3) Se a probabilidade de atingir um alvo num único disparo é 0,3, qual é a probabilidade de que em
# 4 disparos o alvo seja atingido no mínimo 3 vezes?
x <- 3
n <- 4
p <- 0.3
dbinom(x, n, p)


# Modelo Poisson

# 1) Um departamento de polícia recebe em média 5 solicitações por hora. Qual a probabilidade de 
# receber 2 solicitações numa hora selecionada aleatoriamente?
dpois(2,5)

# 2) A experiência passada indica que um número médio de 6 clientes por hora para
# para colocar gasolina numa bomba.

# a) Qual é a probabilidade de 3 clientes pararem qualquer hora?
dpois(3,6)

# b) Qual é a probabilidade de 3 clientes ou menos pararem em qualquer hora?
dpois(0,6) + dpois(1,6) + dpois(2,6) + dpois(3,6)

# Distribuição normal

# 3) A duração de um certo componente eletrônico tem média de 859 dias e desvio padrão de 40
# dias. Sabendo que a duração é normalmente distribuída, calcule a probabilidade desse componente
# durar:

# a) Entre 700 e 1000 dias
E <- 1 - pnorm(700, 859, 40)
E

F <- 1 - pnorm(1000, 859, 40)
F

P <- E - F
P

# b) Mais de 800 dias
G <- 1 - pnorm(800, 859, 40)
G


# 1) Um artigo do periódico Materials Engineering descreve os resultados de teste de tensão quanto
# à adesão em 22 corpos de prova de liga U-700. A carga no ponto de falha do corpo de prova é 
# dada pelo arquivo “carga no ponto de falha.txt”. Verifique se os dados sugerem que a carga
# média na falha excede 10 MPa. Considere o nível de significância de 5%. Interprete o resultado.
library(readr)
Carga_no_ponto_de_falha <- read_table2("Carga_no_ponto_de_falha.txt")

t.test(
  Carga_no_ponto_de_falha$Carga,
  mu = 10,
  alternative = "greater"
)

# Resposta: Utilizando o teste t é possível verificar que o valor de p ficou abaixo do nível de
# significância utilizado (0.05). Nossa hipótese alternativa indica que a média excede 10 MPa,
# como o valor de p ficou abaixo do nível de significância, podemos considerar a hipótese
# alternativa como verdadeira, ou seja, a carga média na falha excede 10 MPa.

# 2) Dois catalisadores estão sendo analisados para determinar como eles afetam o rendimento
# médio de um processo químico. Especificamente, o catalisador 1 está corretamente em uso,
# mas o catalisador 2 é aceitável. Uma vez que o catalisador 2 é mais barato, ele deve ser
# adotado, desde que ele não mude o rendimento do processo. Um teste é feito em uma planta
# piloto, resultando nos dados do arquivo “catalisadores”. Há alguma diferença entre os
# rendimentos médios? Use a = 0,05 e considere variâncias iguais. Formule antes as hipóteses.
library(readxl)
catalisadores <- read_excel(
  "catalisadores.xlsx", 
  col_types = c("numeric", "numeric")
)

t.test(
  catalisadores$catalisador_1,
  catalisadores$catalisador_2,
  conf.level = 0.95
)

# Resposta: Temos duas hipóteses, H0 indica que não há diferença nos rendimentos médios e nossa
# hipótese alternativa H1 indica que há diferença. Foi utilizado o teste t nas duas amostras dos
# catalisadores 1 e 2, com nível de significância de 0.05. O resultado é o valor de p maior que o
# nível de significância 0.05, sendo assim podemos afirmar que nossa hipótese alternativa H1 não
# é verdadeira e que não há diferença nos rendimentos médios.


# 3) Uma companhia fabrica propulsores para uso em motores de turbinas de avião. Uma das
# operações envolve esmerilhar o acabamento de uma superfície particular para um componente
# de liga de titânio. Dois processos diferentes para esmerilhar podem ser usados, podendo
# produzir peças com iguais rugosidades médias na superfície. Uma amostra aleatória de n1 =
# 11 peças, proveniente do primeiro processo, resulta em um desvio-padrão de s1 = 5,1
# micropolegadas. Uma amostra aleatória de n2 = 16 peças, proveniente do segundo processo,
# resulta em um desvio-padrão de s2 = 4,7 micropolegadas. Verifique se a razão entre as duas
# variâncias é diferente de 1 com um nível de confiança de 90%. Considere que os dois processos
# sejam diferentes e a rugosidade na superfície seja normalmente distribuída.
amostraN1 <- rnorm(11, sd = 5.1)
amostraN2 <- rnorm(16, sd = 4.7)

var.test(
  amostraN1,
  amostraN2,
  ratio = 1,
  alternative = "t",
  conf.level = 0.9
)

# Resposta: As hipóteses para a razão entre as duas variâncias são H0 igual a 1 e H1 diferente de 1.
# Como o valor de p é maior que 0.10 sendo que o nível de confiança é 90%, então não podemos rejeitar
# a hipótese H0, sendo que podemos considerar que a razão entre as duas variâncias é 1.


# 4) Verifique se os dados do arquivo “carga no ponto de falha” segue distribuição normal.
shapiro.test(Carga_no_ponto_de_falha$Carga)
# Resposta: Segue distribuição normal (pois o valor de p é maior que 0.05, o que indica que
# hipótese nula é verdadeira)

# 5) Verifique se os dados do arquivo “catalisadores” seguem distribuição normal.
catalisadores1e2 <- c(catalisadores$catalisador_1, catalisadores$catalisador_2)
shapiro.test(catalisadores$catalisador_1)
shapiro.test(catalisadores$catalisador_2)
shapiro.test(catalisadores1e2)
# Os dados do catalisador 1 e 2 separadamente ou juntos seguem distribuição normal.

qqnorm(catalisadores1e2)
qqline(catalisadores1e2)

# ANOVA parte 1

# 1) Uma companhia deseja testar quatro tipos diferentes de válvulas: A, B, C e D. As vidas médias,
# em horas, constam na tabela abaixo. Cada tipo foi testado, aleatoriamente, em seis aparelhos
# idênticos.
# A  B  C  D
# 53 52 51 49
# 58 60 57 54
# 56 52 55 52
# 60 58 53 50
# 51 50 54 53
# 55 54 50 51

# a) Crie o objeto “vida_media” e “válvula” (este como fator).
vida_media <- c(
  53, 52, 51, 49,
  58, 60, 57, 54,
  56, 52, 55, 52,
  60, 58, 53, 50,
  51, 50, 54, 53,
  55, 54, 50, 51
)
vida_media

valvula <- factor(rep(paste("valvula", LETTERS[1:4], sep = ""), 6))
valvula

# b) Teste se há diferença significativa entre as válvulas, ao nível de 5%. Interprete o resultado.
resultado <- aov(vida_media~valvula)
anova(resultado)

# Resposta: Como o valor de p foi maior que 0.05, então não existe diferença significativa
# entre as válvulas

# c) Crie um data.frame com “válvula” e “vida_media”.
df <- data.frame(vida_media = vida_media, valvula = valvula)
df

# d) Ordene o data.frame de acordo com o nome da válvula.
df[order(df$valvula),]


# 2) São feitas cinco misturas da mesma liga metálica e para cada mistura foram efetuadas seis
# medidas de densidade.
# A   B   C   D   E
# 3,6 3,3 3,5 3,5 3,7
# 3,5 3,5 3,3 3,4 3,4
# 3,7 3,4 3,4 3,0 3,6
# 3,1 3,2 3,4 3,3 3,5
# 3,1 3,4 3,3 3,3 3,6
# 3,2 3,4 3,2 3,8 3,4

# Há evidência de que certas misturas tenham densidade média maior do que de outras? Adote a = 5%.
medidasDensidade <- c(
  3.6, 3.3, 3.5, 3.5, 3.7,
  3.5, 3.5, 3.3, 3.4, 3.4,
  3.7, 3.4, 3.4, 3.0, 3.6,
  3.1, 3.2, 3.4, 3.3, 3.5,
  3.1, 3.4, 3.3, 3.3, 3.6,
  3.2, 3.4, 3.2, 3.8, 3.4
)
medidasDensidade

misturas <- factor(rep(paste("mistura", LETTERS[1:5], sep = ""), 6))
misturas

resultado <- aov(medidasDensidade~misturas)
anova(resultado)

# Resposta: Como o valor de p foi maior que 0.05, então não há evidência de que certas misturas
# tenham densidade média maior do que de outras.


# 3) Os dados a seguir, representam, em segundos, o tempo gasto por cinco operários para realizar
# certa tarefa, usando três máquinas diferentes. Considerando a = 5%, verifique se há diferenças
# entre as máquinas e entre os operários.

# Máquinas
# Operários A  B  C
# 1         40 59 42
# 2         39 55 51
# 3         47 55 45
# 4         45 50 40
# 5         52 52 41

dados <- c(
  40, 59, 42,
  39, 55, 51,
  47, 55, 45,
  45, 50, 40,
  52, 52, 41
)

operarios <- gl(5, 3, label = c(paste("operario", 1:5)))
maquinas <- rep(paste("maquina", LETTERS[1:3]), 5)
tabela <- data.frame(
  operarios = operarios,
  maquinas = factor(maquinas),
  dados = dados
)
tabela

resultado <- aov(
  dados~operarios+maquinas,
  tabela
)
resultado

anova(resultado)

# Resposta: Entre os operários não há diferença, pois o valor de p ficou acima de 0.05. Entretanto,
# há diferença entre as máquinas, na qual o valor de p ficou menor que 0.05


# 4) Plantam-se quatro tipos diferentes de sementes de café em cinco tipos de solo. Cada solo é
# dividido em quatro lotes, pelos quais se distribuem, aleatoriamente, os quatro tipos de
# sementes. Ao nível de 5%, teste se a produção varia devido ao solo e/ou devido à variedade
# do café.

# Tipos de café
# SOLO  I  II III IV
# A     15 12 10  14
# B     19 15 12  11
# C     18 14 15  12
# D     16 11 12  16
# E     17 16 11  14

dados <- c(
  15, 12, 10,  14,
  19, 15, 12,  11,
  18, 14, 15,  12,
  16, 11, 12,  16,
  17, 16, 11,  14
)

solos <- gl(5, 4, label = c(paste("solo", LETTERS[1:5])))
tiposCafe <- rep(paste("tipo_cafe", c(1:4)))

tabela <- data.frame(
  solos = solos,
  tiposCafe = factor(tiposCafe),
  dados = dados
)
tabela

resultado <- aov(
  dados~solos+tiposCafe,
  tabela
)
resultado

anova(resultado)

# Resposta: Entre os diferentes solos não há diferença na variação da produção, pois o valor de p
# ficou acima de 0.05. Entretanto, há variação entre os tipos de café, na qual o valor de p ficou
# menor que 0.05.


# ANOVA parte 2

# 1) Considere os dados de índice de mudança de cor para um experimento para comparar duas
# marcas de caneta e quatro diferentes tratamentos de lavagem em relação à capacidade de
# remover tinta de um determinado tipo de tecido. Há diferenças ao nível de 5% devido aos
# tratamentos de lavagem? Plote o gráfico do teste Tukey e interprete o resultado.

#    A    B
# T1 0,97 0,78
# T2 0,68 0,76
# T3 0,10 0,14
# T4 0,15 0,05

dados <- c(
  0.97, 0.78,
  0.68, 0.76,
  0.10, 0.14,
  0.15, 0.05
)

tratamentos <- gl(4, 2, label = c(paste("tratamento", c(1:4))))
marcas <- rep(paste("marca", LETTERS[1:2]))

tabela <- data.frame(
  tratamentos = tratamentos,
  marcas = factor(marcas),
  dados = dados
)
tabela

resultadoAov <- aov(
  dados~tratamentos,
  tabela
)
resultadoAov

resultado <- TukeyHSD(resultadoAov, "tratamentos")
resultado
plot(resultado, cex = 0.6)

# Resposta: Na comparação entre os tratamentos de lavagem, há diferenças
# significativas entre todos os tratamentos exceto os:
# tratamento 2-tratamento 1
# tratamento 4-tratamento 3
# No gráfico é possível observar os tratamentos que contém o 0 (e não possuem
# diferenças significativas) e os tratamentos que não contém o 0 (logo possuem
# diferenças significativas)


# 2) Uma companhia deseja testar 4 diferentes tipos de pneus, A, B, C e D. As vidas médias dos pneus
# (em milhares de milhas) constam na tabela abaixo, onde cada tipo foi testado aleatoriamente em 6
# automóveis idênticos. Determine:

# a) Qual a conclusão do teste Tukey, ao nível de significância de 5%? Explique.
# A  B  C  D
# 23 32 31 28
# 18 40 37 34
# 16 42 35 32
# 10 38 33 30
# 11 30 34 33
# 15 34 30 31

dados <- c(
  23, 32, 31, 28,
  18, 40, 37, 34,
  16, 42, 35, 32,
  10, 38, 33, 30,
  11, 30, 34, 33,
  15, 34, 30, 31
)

pneus <- rep(paste("pneu", LETTERS[1:4]))

tabela <- data.frame(
  pneus = pneus,
  dados = dados
)
tabela

resultadoAov <- aov(
  dados~pneus,
  tabela
)
resultadoAov

resultado <- TukeyHSD(resultadoAov, "pneus")
resultado

# Resposta: Há diferenças significativas entre os:
# B-pneu A, C-pneu A e D-pneu A, nas quais o valor de p ficou abaixo de 0.05
# (não contém 0), já os demais não possuem diferenças significativas.

# b) Faça o gráfico do teste.

plot(resultado, cex = 0.6)


# Regressão

# 1) Os dados apresentados na tabela abaixo relacionam o teor de vitamina C (mg de ácido
# ascórbico/100ml de suco de maçã) em função do período de armazenamento em dias.

# Período de armazenamento (dias)
# Teor de vitamina C
# 1   4,09
# 45  3,27
# 90  2,45
# 135 3,27
# 180 1,64

# a) Crie um data.frame e plote o gráfico.
periodo <- c(1, 45, 90, 135, 180)
teor <- c(4.09, 3.27, 2.45, 3.27, 1.64)
dados <- data.frame(periodo, teor)
plot(dados)

# b) Ache a equação da reta que relaciona dos dados.
reglin <- lm(teor~periodo, dados)
reglin

# c) Qual seria o teor de vitamina C se o suco ficar armazenado durante 20 dias?

# Utilizando a função predict
predict(reglin, newdata = data.frame(teor = c(NA), periodo = c(20)))

# Calculando manualmente
teorPeriodo20 = 3.92980 + -0.01093 * 20
teorPeriodo20

# d) Agora plote novamente os dados e acrescente ao gráfico, além da reta de regressão
# ajustada, segmentos de reta representando os resíduos, ou seja, segmentos de reta que
# vão dos valores observados (pontos) aos calculados (reta).
plot(dados)
abline(reglin, col = 2)
segments(
  dados$periodo,
  dados$teor,
  dados$periodo,
  predict(reglin),
  col = 4
)

# e) Qual a conclusão dessa regressão?
# Resposta: podemos concluir que o período armazenamento influencia no teor de vitamina C, quanto
# maior o período, menor o teor de vitamina.


# 2) Uma cadeia de padarias queria saber se a quantidade de dinheiro gasto em propaganda faz
# aumentar as vendas. Durante seis semanas, fez, em ordem aleatória, gastos com propaganda
# de valores variados conforme a tabela abaixo e anotou os valores recebidos nas vendas.
# Encontre a equação da reta e faça o gráfico de dispersão com a reta ajustada e resíduos.
# Ache o valor do coeficiente de determinação e interprete o valor. O que pode ser concluído
# sobre o comportamento dos valores?

# Gastos Valores recebidos nas vendas
# 100,00 1020,00
# 150,00 1610,00
# 200,00 2030,00
# 250,00 2560,00
# 300,00 2800,00

gastos <- c(100, 150, 200, 250, 300)
vendas <- c(1020, 1610, 2030, 2560, 2800)
dados <- data.frame(gastos, vendas)
dados

reglin <- lm(vendas~gastos, dados)
reglin

predict(reglin)
resid(reglin)

resultado <- data.frame(
  gastos,
  vendas,
  calculado = predict(reglin),
  residuos= resid(reglin)
)
resultado

plot(gastos, vendas)
abline(reglin, col = 2)
segments(
  resultado$gastos,
  resultado$vendas,
  resultado$gastos,
  resultado$calculado,
  col = 4
)

summary(reglin)

# Resposta: podemos concluir que quanto maior é o gasto com propagandas, maior é o valor de vendas.
# Através do coeficiente de determinação, podemos entender que o modelo linear se ajusta bem 
# aos dados, com 0.9841 (98% indica o quanto pode ser explicado o aumento do valor de vendas em
# relação ao valor gasto com propagandas)


# 3) Para uma amostra de 8 operadores de máquina, foram coletados o número de horas de
# treinamento (x) e o tempo necessário para completar o trabalho (y). Os dados encontram-se na
# tabela abaixo:

# X   Y
# 5,2 13
# 5,1 15
# 4,9 18
# 4,6 20
# 4,7 19
# 4,8 17
# 4,6 21
# 4,9 16

horasTreinamento <- c(5.2, 5.1, 4.9, 4.6, 4.7, 4.8, 4.6, 4.9)
tempoCompletarTrabalho <- c(13, 15, 18, 20, 19, 17, 21, 16)
dados <- data.frame(horasTreinamento, tempoCompletarTrabalho)
dados

# a) Faça o gráfico de dispersão para esses dados.
plot(dados)

# b) Determine a equação da reta.
reglin <- lm(tempoCompletarTrabalho~horasTreinamento, dados)
reglin

# c) Trace no gráfico anterior, a reta de regressão.
plot(dados)
abline(reglin, col = 2)
segments(
  dados$horasTreinamento,
  dados$tempoCompletarTrabalho,
  dados$horasTreinamento,
  predict(reglin),
  col = 4
)

# d) Calcule e interprete o coeficiente de determinação.
summary(reglin)

# Resposta: quanto maior a quantidade de horas de treinamento, menor o tempo para completar
# o trabalho. De acordo com o coeficiente de determinação, 0.9201 (92% indica o quanto pode ser
# explicado a diminuição do tempo de trabalho em relação ao maior tempo de treinamento).
# O modelo linear se ajusta bem aos dados.