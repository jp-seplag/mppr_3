# 
# ◧ A indexação é diferente, de acordo com o tipo de objeto, mas de maneira geral você pode acessar os index usando referências numéricas ou nominais.
# 
# ◧ Também é possível usar operadores lógicos, como maior, menor, igual e diferente para identificar dados e informações, ou para localizar o index correspondente.
# 
# 📘 Os materiais desta atividade são um vídeo, uma imagem com os operadores lógicos do R e o código de aula, disponível no github: https://github.com/hugoavmedeiros/cd_com_r/blob/master/scripts/programacao/index_operadores_logicos.R
# 
# 💎 Compartilhe com a gente um código criado por você em que você recupera ou identifica um dado ou informação usando indexação. Lembre-se de compartilhar um link do github!
#   
#   ☆ Se o seu código der erro de objeto, lembre de executar os códigos das aulas anteriores - e de salvar o seu projeto conforme progride 🙂

# Vamos carregar um dataset com dados sobre tempestades
?dplyr:: storms

df <- dplyr:: storms
str(df)

# Primeiro linha 5, coluna 1
df[5,1]

# cria uma lista com os nomes das tempestades
name = unique(df$name)
sample(name,10)

# Retorna a linha com informações sobre a tempestade Erika
df[which(df$name =="Erika"),]
# Retorna as tempestades que em algum momento apresentaram valor de velocidade maior que 50 kt
df[which(df$wind > 50),]
# Retorna as tempestades que em algum momento apresentaram valor de velocidade maior que 50 kt
media_wind <- mean(na.omit(df$wind))
df[which(df$wind > media_wind),]

# Retorna as tempestades que apresentaram menor velocidade em algum momento
min_wind <- min(na.omit(df$wind))
unique(df[which(df$wind == min_wind),1])


