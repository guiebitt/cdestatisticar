# Exemplo Box Plot
x <- c(52, 54, 50, 57, 52, 53)
mean(x)
sd(x)
median(x)
boxplot(x,
        xlab="Turma 1",
        ylab="Massa (Kg)")

# Sequência com incremento de 2 em 2
y <- seq(1, 1000000, 2)
y

# Sequência com incremento de 1 em 1 (sintaxe resumida)
z <- 1:500
z

# Repetição
rep1 <- rep(1, 10)
rep2 <- c(rep(1, 5), 2, 3, 4)
rep1
rep2

# Apresentar posição específica vetor
vt1 <- 5:1
vt1[3]
vt1[2:4]
vt1[c(2,4)]
vt1[vt1<4]
vt1[-2]

# Matrizes
mat1 <- matrix(c(1:10), 2, 5, 1)
mat1
mat2 <- matrix(c(1:10), 2, 5)
mat2

# Resumo
summary(mat1)
summary(mat2)

# Adicionando colunas e linhas na Matriz
mat3 <- cbind(mat1, 1:2)
mat3
