library(tidyverse)

# Vamos "enriquecer" uma base de nascidos vivos por município com a informação 
# de população


# Base com o número de nascidos vivos
nascidos <- read.csv2("bases_originais/nascidos.csv", skip = 3)
nascidos <- nascidos[,1:2]
colnames(nascidos)[2] <- 'nascidos'
head(nascidos)

# Base com a população residente
pop <- read.csv2("bases_originais/pop.csv", skip = 3)
pop <- pop[,1:2]
colnames(pop)[2] = 'população'
head(pop)


# Agrupando as variáveis realizando "junção à esquerda"
nascidos <- left_join(nascidos,pop)


# Vamos ver como ficou nossa base
head(nascidos)
str(nascidos)
glimpse(nascidos)


