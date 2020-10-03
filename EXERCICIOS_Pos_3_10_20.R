# Modelo binomial
# 1) Qual é a probabilidade de se obter 3 caras em 5 lançamentos de uma moeda honesta?
#   2) Qual é a probabilidade de se obter menos que 3 caras em 5 lançamentos da mesma moeda?
#   3) Se a probabilidade de atingir um alvo num único disparo é 0,3, qual é a probabilidade de que em
# 4 disparos o alvo seja atingido no mínimo 3 vezes?
#   Modelo Poisson
# 1) Um departamento de polícia recebe em média 5 solicitações por hora. Qual a probabilidade d
# e receber 2 solicitações numa hora selecionada aleatoriamente?
#   2) A experiência passada indica que um número médio de 6 clientes por hora para
# para colocar gasolina numa bomba.
# a) Qual é a probabilidade de 3 clientes pararem qualquer hora?
#   b) Qual é a probabilidade de 3 clientes ou menos pararem em qualquer hora?
#   3) A duração de um certo componente eletrônico tem média de 859 dias e desvio padrão de 40
# dias. Sabendo que a duração é normalmente distribuída, calcule a probabilidade desse componente
# durar:
#   a) Entre 700 e 1000 dias
# b) Mais de 800 dias
# Distribuição normal
# 1) Um artigo do periódico Materials Engineering descreve os resultados de teste de tensão quanto
# à adesão em 22 corpos de prova de liga U-700. A carga no ponto de falha do corpo de prova é 
# dada pelo arquivo “carga no ponto de falha.txt”. Verifique se os dados sugerem que a carga
# média na falha excede 10 MPa. Considere o nível de significância de 5%. Interprete o resultado.
# 2) Dois catalisadores estão sendo analisados para determinar como eles afetam o rendimento
# médio de um processo químico. Especificamente, o catalisador 1 está corretamente em uso,
# mas o catalisador 2 é aceitável. Uma vez que o catalisador 2 é mais barato, ele deve ser
# adotado, desde que ele não mude o rendimento do processo. Um teste é feito em uma planta
# piloto, resultando nos dados do arquivo “catalisadores”. Há alguma diferença entre os
# rendimentos médios? Use a = 0,05 e considere variâncias iguais. Formule antes as hipóteses.
# 3) Uma companhia fabrica propulsores para uso em motores de turbinas de avião. Uma das
# operações envolve esmerilhar o acabamento de uma superfície particular para um componente
# de liga de titânio. Dois processos diferentes para esmerilhar podem ser usados, podendo
# produzir peças com iguais rugosidades médias na superfície. Uma amostra aleatória de n1 =
#   11 peças, proveniente do primeiro processo, resulta em um desvio-padrão de s1 = 5,1
# micropolegadas. Uma amostra aleatória de n2 = 16 peças, proveniente do segundo processo,
# resulta em um desvio-padrão de s2 = 4,7 micropolegadas. Verifique se a razão entre as duas
# variâncias é diferente de 1 com um nível de confiança de 90%. Considere que os dois processos
# sejam diferentes e a rugosidade na superfície seja normalmente distribuída.
# 4) Verifique se os dados do arquivo “carga no ponto de falha” segue distribuição normal.
# 5) Verifique se os dados do arquivo “catalisadores” seguem distribuição normal.
# ANOVA parte 1
# 1) Uma companhia deseja testar quatro tipos diferentes de válvulas: A, B, C e D. As vidas médias,
# em horas, constam na tabela abaixo. Cada tipo foi testado, aleatoriamente, em seis aparelhos
# idênticos.
# A B C D
# 53 52 51 49
# 58 60 57 54
# 56 52 55 52
# 60 58 53 50
# 51 50 54 53
# 55 54 50 51
# a) Crie o objeto “vida_media” e “válvula” (este como fator).
# b) Teste se há diferença significativa entre as válvulas, ao nível de 5%. Interprete o resultado.
# c) Crie um data.frame com “válvula” e “vida_media”.
# d) Ordene o data.frame de acordo com o nome da válvula.
# 2) São feitas cinco misturas da mesma liga metálica e para cada mistura foram efetuadas seis
# medidas de densidade.
# A B C D E
# 3,6 3,3 3,5 3,5 3,7
# 3,5 3,5 3,3 3,4 3,4
# 3,7 3,4 3,4 3,0 3,6
# 3,1 3,2 3,4 3,3 3,5
# 3,1 3,4 3,3 3,3 3,6
# 3,2 3,4 3,2 3,8 3,4
# Há evidência de que certas misturas tenham densidade média maior do que de outras? Adote a = 5%.
# 3) Os dados a seguir, representam, em segundos, o tempo gasto por cinco operários para realizar
# certa tarefa, usando três máquinas diferentes. Considerando a = 5%, verifique se há diferenças
# entre as máquinas e entre os operários.
# Máquinas
# Operários A B C
# 1 40 59 42
# 2 39 55 51
# 3 47 55 45
# 4 45 50 40
# 5 52 52 41
# 4) Plantam-se quatro tipos diferentes de sementes de café em cinco tipos de solo. Cada solo é
# dividido em quatro lotes, pelos quais se distribuem, aleatoriamente, os quatro tipos de
# sementes. Ao nível de 5%, teste se a produção varia devido ao solo e/ou devido à variedade
# do café.
# Tipos de café
# SOLO I II III IV
# A 15 12 10 14
# B 19 15 12 11
# C 18 14 15 12
# D 16 11 12 16
# E 17 16 11 14
# ANOVA parte 2
# 1) Considere os dados de índice de mudança de cor para um experimento para comparar duas
# marcas de caneta e quatro diferentes tratamentos de lavagem em relação à capacidade de
# remover tinta de um determinado tipo de tecido. Há diferenças ao nível de 5% devido aos
# tratamentos de lavagem? Plote o gráfico do teste Tukey e interprete o resultado.
# A B
# T1 0,97 0,78
# T2 0,68 0,76
# T3 0,10 0,14
# T4 0,15 0,05
# 2) Uma companhia deseja testar 4 diferentes tipos de pneus, A, B, C e D. As vidas médias dos pneus
# (em milhares de milhas) constam na tabela abaixo, onde cada tipo foi testado aleatoriamente em 6
# automóveis idênticos. Determine:
#   a) Qual a conclusão do teste Tukey, ao nível de significância de 5%? Explique.
# A B C D
# 23 32 31 28
# 18 40 37 34
# 16 42 35 32
# 10 38 33 30
# 11 30 34 33
# 15 34 30 31
# b) Faça o gráfico do teste.
# Regressão
# 1) Os dados apresentados na tabela abaixo relacionam o teor de vitamina C (mg de ácido
#                                                                            ascórbico/100ml de suco de maçã) em função do período de armazenamento em dias.
# Período de
# armazenamento (dias) Teor de vitamina C
# 1 4,09
# 45 3,27
# 90 2,45
# 135 3,27
# 180 1,64
# a) Crie um data.frame e plote o gráfico.
# b) Ache a equação da reta que relaciona dos dados.
# c) Qual seria o teor de vitamina C se o suco ficar armazenado durante 20 dias?
#   d) Agora plote novamente os dados e acrescente ao gráfico, além da reta de regressão
# ajustada, segmentos de reta representando os resíduos, ou seja, segmentos de reta que
# vão dos valores observados (pontos) aos calculados (reta).
# e) Qual a conclusão dessa regressão?
#   2) Uma cadeia de padarias queria saber se a quantidade de dinheiro gasto em propaganda faz
# aumentar as vendas. Durante seis semanas, fez, em ordem aleatória, gastos com propaganda
# de valores variados conforme a tabela abaixo e anotou os valores recebidos nas vendas.
# Encontre a equação da reta e faça o gráfico de dispersão com a reta ajustada e resíduos.
# Ache o valor do coeficiente de determinação e interprete o valor. O que pode ser concluído
# sobre o comportamento dos valores?
#   Gastos Valores recebidos nas
# vendas
# 100,00 1020,00
# 150,00 1610,00
# 200,00 2030,00
# 250,00 2560,00
# 300,00 2800,00
# 3) Para uma amostra de 8 operadores de máquina, foram coletados o número de horas de
# treinamento (x) e o tempo necessário para completar o trabalho (y). Os dados encontram-se na
# tabela abaixo:
#   X Y
# 5,2 13
# 5,1 15
# 4,9 18
# 4,6 20
# 4,7 19
# 4,8 17
# 4,6 21
# 4,9 16
# a) Faça o gráfico de dispersão para esses dados.
# b) Determine a equação da reta.
# c) Trace no gráfico anterior, a reta de regressão.
# d) Calcule e interprete o coeficiente de determinação.