pacman::p_load(tidyverse)


# Base com o número de nascidos vivos
nascidos <- read.csv2("bases_originais/nascidos.csv", skip = 3)
nascidos <- nascidos[,1:2]
colnames(nascidos)[2] <- 'nascidos'
head(nascidos)

# Base com mortes evitáveis de 0 a 4 anos
obitos <- read.csv2("bases_originais/me04.csv", skip = 3)
str(obitos)

# Vamos unir as bases com o left_join
teste <- left_join(nascidos,obitos)

# Vamos testar a correlação entre as variaveis
teste_cor <- cor.test(teste$nascidos,teste$Óbitos_p.Residênc)
summary(teste_cor)
print(teste_cor)
print( str_c( "O p-value do teste de correlação foi igual a ", 
              round(teste_cor$p.value,2)
            )
      )
# H0: variáveis são independentes / não têm associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05
 