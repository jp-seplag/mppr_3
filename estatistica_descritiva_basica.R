# Copiando o dataframe 
df <- USArrests

str(df)

### Estatística Descritiva com R
## Tabela de frequência absoluta da variável Rape da base USArrests
table(df$Rape)

## Tabela de frequência relativa da variável Rape da base USArrests
prop.table(table(df$Rape))

## Média da variável Rape da base USArrests
mean(df$Rape)

## Mediana da variável Rape da base USArrests
median(df$Rape)

## Separatrizes da variável Rape da base USArrests
quantile(df$Rape, probs=0.75)
quantile(df$Rape, probs=0.10)
quantile(df$Rape, probs=0.95)
boxplot(df$Rape) # boxplot - gráfico que resume as sepatrizes

## Desvio-padrão da variável Rape da base USArrests
sd(df$Rape)
plot(df$Rape)

## Sumário descritivo básico das variáveis
summary(USArrests)

## Sumário descritivo completo das variáveis usando o pacote fBasics
pacman::p_load(fBasics)
basicStats(df[ , c(1:4)])
hist(df$Rape) # histograma - gráfico que permite conhecer a curva dos dados
