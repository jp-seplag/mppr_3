# Vetor simples
# Criando um vetor -> Simples

itens <- c("arroz","feijão","trigo","soja")

# Criando vetor com preços
preços <- runif(length(itens), min=3, max=10)
preços <- round(preços,digits = 2)

# criando data.frame com os vetores
df <- data.frame(itens,preços)

# Objeto Complexo

# Criando data frame com 2 variaveis
df <- data.frame(
"registro" = seq(1:200),
"valor1" = rnorm(200),
"valor2"= rnorm(200)
)
# Criando a regressão linear
l <- lm(valor1~valor2,df)
# exbindo a estrutura da regressão
str(l)
plot(l)

