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

# Data frame
Nome <- c("José Santos",
          "Angela Dias",
          "Aline Souza",
          "Mayara Costa",
          "Lara Lins",
          "Nicolas Barros")
Nome

Idade <- c(17,
           17,
           16,
           15,
           15,
           13)
Idade

Sexo <- factor(c("M", "F", "F", "F", "F", "M"))
Sexo

NF <- c(92,
        75,
        81,
        87,
        90,
        88)
NF

escola <- data.frame(Nome, Idade, Sexo, NF, stringsAsFactors = FALSE)
escola

# Padrão é criar colunas string como fator e por isso foi utilizado o stringsAsFactors
# Ou poderia ser convertido a coluna para caractere
escola[,1] <- as.character(escola[,1])

# Acessando os dados
escola[2, 1]
escola[2, ]
escola$Nome
escola$Nome[2]
escola$Nome[1:3]

# Incluindo nova coluna
escola <- cbind(escola, Conceito=c("A", "C", "B", "B", "A", "B"))
escola

# Incluindo nova linha
escola <- rbind(escola, c("Caio Prio", 12, "M", 99, "A"))
escola

# Eliminar coluna Conceito
escola <- escola[,-5]
escola

# Eliminar linha Caio Prio
escola <- escola[-7,]
escola

# Ordenar com order
escola[order(escola$Sexo, escola$NF),]

# Ordenar com order decrescente
escola[order(decreasing = TRUE, escola$Sexo, escola$NF),]

# Separar data.frame
split(escola, sexo)

# Unir data.frame JOIN
novo <- data.frame(Nome=escola$Nome, Número=1:6)
novo

merge(escola, novo, by="Nome")

# Lista
pes <- list(idade=32, nome="Aline", notas=c(98,85,96))
pes
pes$nome
pes$notas[2]

# t.test / p > 0.05 = (verdadeiro 95%) / p < 0.05 <> (falso)
a <- c(4, 5, 3, 6)
b <- c(6, 5, 3, 2)

tt <- t.test(a, b, var.equal = TRUE)
tt

is.list((tt))
mode(tt)

names(tt)

# Multiplicação de matrizes
# Elemento por elemento MA*MB
# Algebra MA%*%MB

# Determinante det(Matriz)

# Amplitude range(Vetor)

# Indica o diretório de onde está lendo (workspace)
getwd()

# Gráficos
x <- 1:20
y <- x^2
plot(x, y)

# Mesma janela vários gráficos par(mfrow)
par(mfrow=c(1,1))
plot(x, y)
plot(x, y)

# Teste do histograma normal
shapiro.test(NF)
hist(NF, )

x <- c(-10,5,34,10,1, 1:10)
shapiro.test(x)
hist(x, )
table(x)
