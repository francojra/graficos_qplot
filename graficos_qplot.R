
# Gráficos com qplot ----------------------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 22/04/2022 -------------------------------------------------------------------------------------------------------------------------

# Pacotes ----------------------------------------------------------------------------------------------------------------------------------

library(tidyverse)

# Fórmula ----------------------------------------------------------------------------------------------------------------------------------

### Função qplot()
### Banco de dados, variáveis x e y
### Geometria: tipo de gráfico

# Carregar dados ---------------------------------------------------------------------------------------------------------------------------

iris

# Gráficos ---------------------------------------------------------------------------------------------------------------------------------

### Uma dimensão

qplot(x = Petal.Length, data = iris) # Padrão gera geometria de histograma.
qplot(x = Petal.Length, data = iris, geom = "histogram") # Produz mesmo gráfico.
qplot(x = Petal.Length, data = iris, binwidth = 0.1) # Considera as observações como 0.1, espaço entre uma observação e outra.
qplot(x = Petal.Length, data = iris, geom = "bar") # Frequência de cada valor, no histograma é uma faixa de valores.
qplot(x = Species, data = iris) # Como o x não é numérico, o padrão gera um gráfico de barras.

### Duas dimensões

qplot(x = Petal.Length, y = Sepal.Length, data = iris) # Padrão gera geometria de pontos.
qplot(x = Petal.Length, y = Sepal.Length, data = iris, color = Species)
qplot(x = Petal.Length, y = Sepal.Length, data = iris, shape = Species)
qplot(x = Petal.Length, y = Sepal.Length, data = iris, color = Species, shape = Species)
