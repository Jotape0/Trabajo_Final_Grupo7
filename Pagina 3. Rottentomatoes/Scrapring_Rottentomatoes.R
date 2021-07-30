install.packages("rvest")
library(rvest)

## Aca se presenta el link del top 100 de las peliculas de todos los tiempos

rotten <- read_html("https://www.rottentomatoes.com/top/bestofrt/")
print(html_text(rotten))
tablaRotten <- html_nodes(rotten, css=".table")
print(html_text2(tablaRotten))


titulosPeliss <- html_nodes(tablaRotten, css=".unstyled.articleLink")
print(html_text2(titulosPeliss))
urlRottenn <- ("https://www.rottentomatoes.com")
print(urlRottenn)

## aca se muestran los titulos del top 100 de peliculas de todos los tiempos
## y sus respectivos links

for(titulop in titulosPeliss){
  print("==============")
  print(html_text2(titulop))
  urlTop <- html_attr(titulop,"href")
  print(paste(urlRottenn, urlTop, sep = ""))
  }

# aca no se pudo sacar el porcentage de la audiencia desde dentro de cada titulo,
# al sacar el nro de "ratings", que estaba justo debajo del porcentage,
# este ultimo si se podia pero era inutil sin el porcentage de la audiencia.
# (.percentage era el css del % de la audiencia,
# esta css es del nro de ratings: .scoreboard__link.scoreboard__link--audience,
# por si quiere comprobar)
for(titulop in titulosPeliss){
  print("==============")
  print(html_text2(titulop))
  urlTop <- html_attr(titulop,"href")
  print(paste(urlRottenn, urlTop, sep = ""))
  urlTitulo <- paste(urlRottenn, urlTop, sep = "")
  url2 <- read_html(urlTitulo)
  AudScore <- html_nodes(url2, css=".scoreboard__link.scoreboard__link--audience" )
  print(html_text(AudScore))
  
}


# Convirtiendo las categorías en caracteres para agruparlas
# en un dataframe
urlRotten <- "https://www.rottentomatoes.com"

califRotten <- html_nodes(tablaRotten, css=".tMeterScore")
califRotten <- html_text2(califRotten)

LinksRotten <- print(paste(urlRotten, html_attr(titulosPeliss,"href"), sep = ""))

NdeReviews <- html_nodes(tablaRotten, css=".right.hidden-xs")

## como en el N de Reviews se "cuela" un valor a los 100 titulos,
## se quita 1 valor y se reescribe la variable

ndr <- NdeReviews[-1]
ndr <- html_text(ndr)


titulosPelis <- html_nodes(tablaRotten, css=".unstyled.articleLink") 
titulosPelis <- html_text2(titulosPelis)

dfRotten <- data.frame(Titulos=titulosPelis, Calificaciones=califRotten, Links=LinksRotten, Reviews=ndr)

write.csv2(dfRotten, "Top100Rotten.csv")
write.csv(dfRotten, "Top100R.csv")




