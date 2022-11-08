pacman::p_load(data.table, dplyr, tidyverse, validate)


# Vamos utilizar o dataset com informações sobre os personagens de starwars
df <- storms[,1:11]
head(df)
# Vamos criar nossa regra de validação:
regras <- validator(wind >= 50, pressure >= 1000)
# Vamos "confrontar" nossa base com as regras definidas
validacao <- confront(df, regras)
# Verificando a validação dos dados:
summary(validacao)
plot(validacao)
