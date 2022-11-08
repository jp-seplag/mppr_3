library(dplyr)
library(tidyr)

# Vamos carregar o dataset com informações sobre tempestades
# disponível no pacote dplyr
?storms
df <- storms
colnames(df)
df <- df %>% group_by(name,year,status) %>% summarise(wind = max(wind))


# Vamos dar uma olhada na estrutura e nas primeiras e últimas linhas
str(df)
head(df)
tail(df)
# Vamos dar uma olhada no tempestade Amy que aparecia no início do nosso dataset
df[which(df$name == 'Amy'),]

# Vamos distribuir a informação de status da tempestade em colunas, ou seja, vamos
# "pivotar" nossos dados de longo (long) para largo (wide) com a função pivot_wider.

df_wider <- pivot_wider(df,names_from = status, values_from = wind)

# Vamos dar uma olhada no dataset transformado
head(df_wider)
