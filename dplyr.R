# ◧ Dplyr!!! O pacote do tidyverse voltado para transformações!!! Dplyr é uma mão na roda muito grande, pois ele traz funções para diversas operações que fazemos no dia a dia: sumários, agrupamentos, manipulação de casos, manipulação de variáveis e enriquecimento de bases!! 
#   
#   ◨ Além disso, o dplyr possui uma folha de dicas muito detalhada!!!
#   
#   📘 Os materiais desta atividade são um vídeo, um link para uma folha de dicas do dplyr, e o código de aula, disponível no github: https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/transformacao/dplyr.R.
# 
# 💎Compartilhe com a gente um código criado por você com a aplicação de pelo menos um sumário, um agrupamento, uma
# manipulação de casos e uma manipulação de colunas.

library(dplyr)

df <- storms
str(df)

# sumários
count(df,status) 

# sumários com agrupamentos
tipo_tempestade <- df %>% group_by(status) %>% summarise(avg = mean(wind))

### Transformação de Casos
# seleção de casos
df %>% filter(status != 'hurricane') %>% group_by(status) %>% summarise(avg = mean(wind))


# ordenar casos
arrange(tipo_tempestade, avg) # ascendente
arrange(tipo_tempestade, desc(avg)) # descendente

### Transformação de Variáveis

# seleção de colunas
df %>% select(status, category, wind) %>% arrange(wind)

# novas colunas - vamos calcular o imc ☺
view(df  %>% mutate(coordenada = str_c(long," - ", lat)
                 ))

# renomear
df %>% rename(tipo = status)
