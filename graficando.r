# Scrips para realizar graficos en R

library(ggplot2)
library(dplyr)

data <- read.csv("data/pkm.csv")
colnames(data)
# violin
p <- ggplot(data, aes(x = status, y = defense,  fill = status )) +
     geom_violin() + theme_minimal()
p     

# desnsidad
q <- ggplot(data, aes(x = hp, group = status, fill = status)) + 
     geom_density(alpha = 0.4) + theme_minimal()
q

# scatter

pkm <- data %>% filter(status==c("Normal","Legendary"), generation == 1)
pq <- ggplot(pkm, aes(x = hp, y = defense, color = status)) +
      geom_point(size = 4, alpha = 0.5) + theme_minimal()
pq

table(data$status)
colnames(data)
table(data$type_1)

Burbujas 
n <- 100
a <- rnorm(n, 30, 2)
b <- rbinom(n, 200, 1/3)
s <- c(5, 10, 20, 30)
ss <- sample(s, n, replace = TRUE) 

temp <- data.frame(columna_1 = a, columna_2 = b, columna_3 = ss)
View(temp)

ggplot(temp, aes(x = columna_1, y = columna_2, size = columna_3)) + 
     geom_point(alpha = 0.7) +  theme_minimal()


# Ejemplo 2. Burbuja
tmp <- data %>% filter(type_1 == "Ghost") 

fantasma <- tmp %>% ggplot(aes(x = hp, y = defense, 
          size = attack, color = speed )) +
          geom_point(alpha = 0.7) + theme_minimal()
fantasma











