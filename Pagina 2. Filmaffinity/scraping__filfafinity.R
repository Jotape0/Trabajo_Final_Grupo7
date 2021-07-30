########filmafinity

install.packages("rvest")

library(rvest)

#Fijamos la pagina web que utilizaremos 
padrino<-read_html("https://www.filmaffinity.com/cl/topgen.php?genre=&fromyear=&toyear=&country=&nodoc&notvse")
print(html_text(padrino))
tablapadrino<-html_nodes(padrino, css= "#z-top-movies")


titulospadrino<- html_nodes(padrino, css= ".mc-title")
print(html_text(titulospadrino))


#usando for para obtener los titulos
for (Titulospeliculas in titulospadrino) {
  print(html_text(Titulospeliculas))

}

### Obtener promedios de peliculas en filmafinity

notaspeliculas<- html_nodes(padrino, css=".avg-rating")

print(html_text(notaspeliculas))

#usando for para obtener los promedios
for (notaspromedio in notaspeliculas) {
  print(html_text(notaspromedio))

}

#obtener el director de la pelicula
director<- html_nodes(padrino, css=".mc-director")
print(paste(html_text(titulospadrino),html_text(director)))



#link de las peliculas
links<- html_nodes(titulospadrino, css="a")
print(html_attr(links,"href"))

for (linkspeliculas in links) {
  print(html_text(linkspeliculas))
  print(html_attr(linkspeliculas,"href"))
}


#Obtendremos la cantidad de reviews los cuales dan la nota

reviews<- html_nodes(padrino, css=".rat-count")
print(html_text(reviews ))

#cantidad de reviews con titulos
print(paste(html_text(titulospadrino),html_text(reviews)))


#Obtencion de cantidad de criticas de expertos por peliculas
remove(linkscriticas)
for (criticas in titulospadrino) {
  print(html_text(criticas))
  linkscriticas<- (html_attr(links,"href"))
  print(linkscriticas)
  criticas1<- read_html(linkscriticas)
  criticaspagina<- html_nodes(criticas1, css=".total-abs")
  print(html_text(criticaspagina))
}



#Creando dataframe
misdatos<- data.frame()
titulos<- html_text(titulospadrino)
directores<- html_text(director)
review1<- html_text(reviews)

notaspeli<- html_text(notaspeliculas)
links1<- html_attr(links,"href")
tablaspeliculas<- data.frame(TITULOS=titulos, Directores=directores,NOTASPROMEDIO=notaspeli,LINKSPELICULAS=links1,REVIEW=review1)
write.csv2(tablaspeliculas,"filmafinity.csv")




