## CORRELAÇÃO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(datasets ,corrplot)

df <- read.csv("bases_originais/bodyfat.csv")
df <- df[,1:4]



# Vamos carregar o dataset com dados sobre um estudo
# da composição corporal de um grupo de indivíduos.
str(df)

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS #
cor(df)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(df)

# CORRPLOT DAS VARIÁVEIS #
dfCor <- cor(df)
corrplot(dfCor, method = "number", order = 'alphabet')
corrplot(dfCor, order = 'alphabet') 
