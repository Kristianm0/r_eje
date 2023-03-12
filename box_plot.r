#boxplot 📌


# EJEMPLO ◀️
boxplot(mtcars$hp,
        ylab="caballos de fuerza",
        main="caballlos de fuerza en carros mtcars")

#Usamos la funcion "boxplot" para generar el grafico que queremos.
# especificamos la base de datos "mtcars" despues del signo de dolar $ ponemos la columna.
# le decimos que titulo va a llevar y.
# con Main le decimos el titulo.

# EJEMPLO ◀️
ggplot(mtcars, aes(x=as.factor(cyl), y=hp, fill=cyl))+
      geom_boxplot(alpha=0.6)+
      labs(x="cilindros", y="caballos de fuerza",
            title = "Caballos de fuerza cilindros en mtcars")+
      theme(legend.position = "none")+
      theme(panel.background = element_blank(),
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank())
            )


#Usamos gplot para hacer el grafico mas bonito.
#Especificamos el dataset mtcars
#En los ejes le decimos que en y use la columana hp. Y que se llene con fill con la columa cyl
# + mas el grafico que queremos crear. geom_boxplot()
#La etiquetas o los y sus titulos. Con labs, luego x y su titulo y= ""
# title para darle el titulo.
#theme(legende position = element_black) para darle un fondo a nuestro grafico.

# ejemplo ◀️
#scatter plot con ggplot en mtcars - dos variables

ggplot(mtcars, aes(hp, mpg))+
  geom_point()+
  labs(x="caballos fuerza", y="Millas por galon", 
       title="Relacion caballos de fuerza y millas por galon")
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#escribimos el comando que da el grafico. Pasamos el dataset, y la variable.
#aes para la parte estetica.Y ponemos las variables.
#Labs los ejes y sus titulos.

# EJEMPLOS RELACIONAMIENTO CON DATOS ◀️
#Buscando correlaciones con pairs

pairs(mtcars[,2:6])
#Pair para relacionar variables.
#Dentro de los parentesis le damos el data set.
#La como significa toda las columnas.
#Las columnas seran de 2 a la 6.



newdata <- subset(mtcars, select=c(2,7:8,11,12))
pairs(newdata)

#Para esta funcion necesitamos el paquete dplyr.
#Selecionamos la nueva data. para crear una variable.
#Ponemos que sera igual a un subset.
#Ponemos el dataset.
# Selecionamos los datos o columnas que queremos.
#